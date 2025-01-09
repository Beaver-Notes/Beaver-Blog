---
layout: post
title: "Security brief for version 2.7.0 and earlier versions"
date: 2024-02-24
author: "Daniele Rolli"
github: Daniele-rolli
label: 
 - Security
image: assets/img/2024/2024-02-24.webp
excerpt_separator: <!--more-->
---

# Security Vulnerability in Beaver Notes Version 2.7.0 and Earlier

During the development of version 2.8.0, the team discovered a vulnerability <!--more--> that allows a bad actor to unlock notes by modifying the unlock logic and inserting the hash key as the password using developer tools.This vulnerability, although not exploitable without access to the device's operating system, still poses a significant threat to user privacy. It has since been fixed, and this article aims to explain the cause of the issue.

**TL;DR:** A security issue affecting Beaver Notes 2.7.0 and earlier versions has been discovered. The vulnerability has been patched in version 2.8.0 by encrypting locked note content using AES-128. Please update to the latest version of Beaver Notes if you haven't already.

## The Unlock Nightmare

You can follow the full log of the issue on GitHub if you want to learn more about it. Before delving into the problem, an honorable mention goes to @Bigshans, the team member who discovered it. The issue revolves around the `HomeNoteCard.vue` component, which is responsible for displaying notes as cards and managing their states such as Archived, Locked, and Bookmarked. This component used the following code snippet in the unlock logic to compare the user's inputted password with its hash in localStorage.

```javascript
const hashHex = hashArray
  .map((byte) => byte.toString(16).padStart(2, '0'))
  .join('');

if (hashHex === sharedKey) {
  // ...
}
```

It was later discovered that the code could be modified through developer tools to accept the hash of the password as the password itself, rendering hashing useless and leaving locked notes vulnerable.

```javascript
let hashHex = hashArray
  .map((byte) => byte.toString(16).padStart(2, '0'))
  .join('');
hashHex = sharedKey;
if (hashHex === sharedKey) {
  // ...
}
```

## First Attempt: Password Storage Rethink

At first, we thought the issue was the location of the password, so we built a new method of storing passwords, which was, in itself, secure and consisted of saving the salted hash of the password in the same location as the notes.

```javascript
import { defineStore } from 'pinia';
import { useStorage } from '../composable/storage';
import bcrypt from 'bcryptjs';

const storage = useStorage();

export const usePasswordStore = defineStore('password', {
  state: () => ({
    sharedKey: '', // Store the global password
  }),
  actions: {
    async retrieve() {
      try {
        const storedPassword = await storage.get('sharedKey', '');
        this.sharedKey = storedPassword;
        return this.sharedKey;
      } catch (error) {
        console.error('Error retrieving global password:', error);
        return '';
      }
    },
    async setsharedKey(password) {
      try {
        const hashedPassword = await bcrypt.hash(password, 10); // Hash the password
        this.sharedKey = hashedPassword;
        await storage.set('sharedKey', hashedPassword); // Store the hashed password
      } catch (error) {
        console.error('Error setting global password:', error);
        throw error;
      }
    },
    async isValidPassword(enteredPassword) {
      try {
        return await bcrypt.compare(enteredPassword, this.sharedKey); // Compare with hashed global password
      } catch (error) {
        console.error('Error validating password:', error);
        throw error;
      }
    },
    async resetPassword(currentPassword, newPassword) {
      try {
        // Check if the current password matches the stored one
        const isCurrentPasswordValid = await this.isValidPassword(currentPassword);
        if (!isCurrentPasswordValid) {
          throw new Error('Current password is incorrect');
        }

        // Hash the new password
        const hashedNewPassword = await bcrypt.hash(newPassword, 10);

        // Update the sharedKey with the new hashed password
        this.sharedKey = hashedNewPassword;
        await storage.set('sharedKey', hashedNewPassword);

        return true; // Password reset successful
      } catch (error) {
        console.error('Error resetting password:', error);
        throw error;
      }
    },
  },
});
```

However, we soon discovered that this approach still left room for a bad actor to unlock every note through the console, making locked notes even less secure than before. Therefore, it was time to rebuild our locked notes from the ground up.

## Lock it, Encrypt it, Forget it

We have therefore rewritten the methods for locking notes to ensure that no bad actor could ever unlock them. The new locking mechanism employs AES-128 encryption to cryptographically protect the note content. Now, instead of solely relying on a password to unlock a note, we compare the password against its salted hash, adding an additional layer of security.

```javascript
async lockNote(id, password) {
  if (!password) {
    console.error('No password provided.');
    return;
  }

  try {
    const encryptedContent = AES.encrypt(
      JSON.stringify(this.data[id].content),
      password
    ).toString();

    this.data[id].content = { type: 'doc', content: [encryptedContent] };
    this.data[id].isLocked = true;
    this.isLocked[id] = true;
    await storage.set(`notes.${id}`, this.data[id]);
    this.lockStatus[id] = 'locked';
    this.isLocked[id] = true;
    await Promise.all([
      storage.set('lockStatus', this.lockStatus),
      storage.set('isLocked', this.isLocked),
    ]);
  } catch (error) {
    console.error('Error locking note:', error);
    throw error;
  }
}

async unlockNote(id, password) {
  if (!password) {
    console.error('No password provided.');
    return;
  }

  try {
    const decryptedBytes = AES.decrypt(
      this.data[id].content.content[0],
      password
    );
    const decryptedContent = decryptedBytes.toString(Utf8);

    this.data[id].content = JSON.parse(decryptedContent);
    this.data[id].isLocked = false;
    this.isLocked[id] = false;
    await storage.set(`notes.${id}`, this.data[id]);
    this.lockStatus[id] = 'unlocked';
    this.isLocked[id] = false;
    await Promise.all([
      storage.set('lockStatus', this.lockStatus),
      storage.set('isLocked', this.isLocked),
    ]);
  } catch (error) {
    console.error('Error unlocking note:', error);
    throw error;
  }
}
```

With this new version, the `lockNote` function encrypts the note content with a password, updates its status to locked, and stores the encrypted data. Similarly, the `unlockNote` function decrypts the content using the password, updates the status to unlocked, and stores the decrypted data. Both functions handle errors and require a password.

In conclusion, this vulnerability is not considered serious and likely cannot be exploited without access to the device, given the offline nature of the app and the fact that notes aren’t stored as plain text, making them not readily accessible. Nevertheless, we remain committed to providing the best privacy and security practices to our users.
```