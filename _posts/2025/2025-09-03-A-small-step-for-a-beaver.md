---
layout: post
title: "A small step for a Beaver..."
date: 2025-09-03
author: "Daniele Rolli"
github: Daniele-rolli
label:
  - Community
image: assets/img/2025/2025-09-03.png
excerpt_separator: <!--more-->
---

It’s finally September, and with it come new updates: a new beta of Pocket, a bold vision for the future of Beaver, and even a little exercise in democracy. <!--more--> In this, as always, not so monthly blog post, we’ll dive deeper into all the new features and improvements coming to version 4.2.0 and the next beta of Beaver Pocket. We’ll also discuss release dates for the stable version, share our future plans for Beaver Notes, and carry out a small exercise in democracy to let you decide what we should work on first.

## 📑 Table of Contents

1. [👀 Not a Small Update After All](#-not-a-small-update-after-all)
   - [🔒 Stronger Security](#-stronger-security)
   - [✨ UI & Feature Enhancements](#-ui--feature-enhancements)
   - [⚡️ Performance & System Improvements](#️-performance--system-improvements)
2. [🚚 Coming Soon on Mobile](#-coming-soon-on-mobile)
   - [🦄 What’s Different in Pocket](#-whats-different-in-pocket)
3. [🔮 Looking Ahead](#-looking-ahead)
   - [🤝 Collaboration](#-collaboration)
   - [🔌 Plugins](#-plugins)
   - [🤖 AI, But Done Right](#-ai-but-done-right)
4. [🗳️ Now It’s Time for You to Choose](#️-now-its-time-for-you-to-choose)
5. [🎮 Side Quests](#-side-quests)
6. [🧢 Swag That Supports](#-swag-that-supports)
7. [💖 Thank You](#thank-you-)

## 👀 Not a Small Update After All

Beaver Notes is packed with new features and fixes, and the most exciting one by far is **folders**!

Folders give you a powerful way to organize your notes alongside labels. They can contain both notes and other folders, and you can even set emojis as folder icons for a touch of personality.

### 🔒 Stronger Security

We’ve also made big improvements to security. On first launch after the update, your password will be automatically migrated from the old hashed storage into a new `.enc` file. This uses Electron’s secure storage together with your system’s password manager, providing stronger protection and more reliable access. Your OS’s built-in cryptography is now used to encrypt passwords. Locked notes are also migrated automatically, moving from the old `lockStatus` / `isLocked` arrays to the new `isLocked` property.

### UI & Feature Enhancements

- **Text color menu**: Now displays the actual color you’ve selected instead of a dull gray, making highlighting much clearer ([#346](https://github.com/Beaver-Notes/Beaver-Notes/issues/346)).
- **Embeds & slash menu**: Both have been improved for smoother usability.
- **Select elements**: Finally redesigned to look consistent across platforms, with built-in search support.
- **RTL/LTR options**: These are now bundled with languages, and yes, **Arabic support** has been added!
- **Images**: Fixed several issues with image handling ([#344](https://github.com/Beaver-Notes/Beaver-Notes/issues/344)).
- **Audio**: Option to select audio files.
- **Trailing nodes**: You can now click below a block to add a new paragraph, just like in other editors.
- **Search**: We redesigned the search UI to look like the redesigned search in Beaver Pocket.
- **Filters**: On split screen the search bar now takes up the whole space while the labels and order options wrap under it.
- **UI**: We made some tweaks, adjusted some colors and improved the overall look and feel slightly.
- **Sync**: Fixed a bug that would ignore notes from remote.
- **Command Prompt**: Folders support, Icons and UI improvements.

### ⚡️ Performance & System Improvements

We’ve made slight but noticeable gains in performance and loading times. Artwork has been refreshed, fonts switched from TTF to WOFF2 for better loading speed and reduced space usage, and the app can now automatically follow your system dark mode setting.

Oh, and that annoying checkbox bug? Fixed.

## 🚚 Coming Soon on Mobile

We received a ton of emails from people wanting to join the beta, but unfortunately, we had to exclude non Gmail addresses since Google only allows beta access through Gmail accounts. In the end, the first people who signed up got in.

If everything goes as planned, we’re aiming to release Pocket by mid-September on both the App Store and Play Store, followed shortly by releases on F-Droid and other app stores.

### 🦄 What’s Different in Pocket

Pocket includes all the same fixes as Beaver Notes, plus some exciting improvements.

#### Security & Unlocking

- Security has been improved, and you can now **unlock notes using your biometric data**, even if they were previously locked with a password.

#### UI & Usability

- The **filtering UI** on the home screen and archive has been redesigned to be more compact and mobile-friendly.
- **Search** inside the editor, now comes with a cleaner, more modern design.
- Interacting with items in the **toolbar** no longer collapses the keyboard, making editing smoother.
- Fixed **keyboard bug on iPad**, we submitted the fix to Capacitor because it’s an upstream issue.

#### Storage & Features

- Storage has been completely rewritten to match Beaver Notes’ Pinia based system using Redux.
- This change enabled the introduction of **collapsible headings**.
- On **iOS**, we’ve added opt-in support for Spotlight integration.
- On **Android**, you’ll now have access to **custom icons**, plus a new automatic themed icon.
- **Two new icons** are coming to Pocket.
- **Export and Import** go a lot better now that they can use scoped storage.
- **Sync** we improved sync performance and fixed a bug that caused credentials to be forgotten.

# 🔮 Looking Ahead

As you might have noticed Beaver Notes has switched from an almost monthly release schedule to a more relaxed release schedule focusing on delivering fixes and features only when we are ready to do so, this allows us to deliver three big, game-changing features by the end of 2026, and here’s the twist, you get to decide which one lands first.

## 🤝 Collaboration

Real-time collaboration is one of the features we are most excited about, if we begin work on it immediately after the 4.2.0 release we’re aiming to have the first version ready by November.

Collaboration and sync will be rolled out in two phases:

1. **Improved synchronization with Yjs**: The existing sync system will stay in place, but note content will be migrated to Yjs. That means changes are no longer merged by timestamps, but edits made on multiple devices are merged automatically.

2. **Collaboration via WebSocket + Wasabi:**
   Real-time editing will be powered by a lightweight WebSocket relay running on a VPS. All Yjs updates are end-to-end encrypted, so the server acts only as a blind forwarder. For assets (like images and files), we’ll use Wasabi as encrypted temporary storage: files are uploaded as encrypted binaries when shared, retrieved by peers, and removed once no longer needed. This approach keeps things simple, private, and affordable. Sync remains under your control through your chosen cloud provider, while collaboration adds a secure shared workspace for teams.

{% include carousel.html images="assets/img/2025/2025-09-03/collaboration-1.png,assets/img/2025/2025-09-03/collaboration-2.png,assets/img/2025/2025-09-03/collaboration-3.png" %}

<p class="mt-2 text-xs text-gray-500 dark:text-gray-400 italic opacity-80 text-center">
  These screenshots are early concepts, the final look and features may evolve as development continues.
</p>


## 🔌 Plugins

Plugins are one of the most requested features in Beaver Notes. If development begins right after the **4.2.0 release**, we’re aiming for a first version by **early spring 2026**.

To make this possible, we’ll build a **Plugin API** that exposes key app endpoints such as **storage** and **UI hooks**. Unlike many other apps, Beaver Notes plugins will be **confined inside notes**, keeping them lightweight, focused, and secure.

On the infrastructure side, we’ll introduce **extension.beavernotes.com**, a GitHub-hosted index of plugins that users can browse and install directly from the **settings menu**.

Plugins will:

- Be available on **both Pocket and Notes**.
- Be written in **plain JavaScript**, just like Tiptap plugins.
- Be accessible directly from the **“/” menu**, allowing users to insert custom nodes right inside the editor.

{% include carousel.html images="assets/img/2025/2025-09-03/plugins-1.png,assets/img/2025/2025-09-03/plugins-2.png,assets/img/2025/2025-09-03/plugins-3.png" %}

<p class="mt-2 text-xs text-gray-500 dark:text-gray-400 italic opacity-80 text-center">
  These screenshots are early concepts, the final look and features may evolve as development continues.
</p>


## 🤖 AI, But Done Right

Most privacy-focused apps stay away from AI, and for good reason. Commercial AI models are often **not private** and certainly **not cheap**. But with the introduction of [Foundation Models](https://developer.apple.com/documentation/foundationmodels) in **iOS 26** and [Gemini Nano](https://developer.android.com/ai/gemini-nano) in **Android 16**, we finally see a path to integrate AI in Beaver Notes **without compromising on privacy**.

Our rollout will begin on **mobile**, where on-device models are available, and later extend to desktop, if we start after **4.2.0**, a realistic timeline would be late this winter, rolling out on mobile first.

### 🔒 Privacy First

- **Always opt-in**: Even on supported devices, AI features will be **disabled by default**.
- **No blanket AI search/organization**: Unlike other apps, we won’t push all your notes into a model. AI will only ever see what _you_ explicitly choose to share.
- **Fine-grained control**: When you use AI, only the **selected text** is sent — nothing else.

### 🌍 Flexible Model Options

We don’t want to lock you into a single provider. Instead, Beaver Notes will support:

- **On-device models** on iOS and Android.
- **BYO (Bring Your Own)** tokens for **OpenAI, Mistral, and Claude**.
- **Ollama support** for those running homelabs or lightweight models locally.

This hybrid approach means you can choose between **fast, private, and free on-device AI** or your preferred provider if you need more power.

### ✨ What AI Can Do in Beaver Notes

We’re starting small and focused, you’ll be able to highlight text and choose from the AI menu in the toolbar between:

- **Translate** text between languages, which locally will be limited by supported languages.
- **Summarize** long passages into key points.
- **Rewrite** or refine your writing.
- **Custom prompts**.

That’s it each action only ever processes the text you select, ensuring your data stays private and under your control. We will not introduce features like AI Search, Organization etc which would need to indiscriminately index all your notes. We could consider and are open to partnering with companies in the future to offer **opt-in** default option that don't require users to bring their own access tokens, even then we'll keep the same set of features on each model and same data sharing policy.

{% include carousel.html images="assets/img/2025/2025-09-03/ai-1.png,assets/img/2025/2025-09-03/ai-2.png,assets/img/2025/2025-09-03/ai-3.png,assets/img/2025/2025-09-03/ai-4.png,assets/img/2025/2025-09-03/ai-5.png" %}

<p class="mt-2 text-xs text-gray-500 dark:text-gray-400 italic opacity-80 text-center">
  These screenshots are early concepts, the final look and features may evolve as development continues.
</p>

# 🗳️ Now It’s Time for You to Choose

You can choose which feature you'd like to see first in Beaver Notes, and whatever you choose other features will still be implemented by the end of 2026, which means even if your favorite feature did not win it will make it just a little later.

{% include callout.html
   title="TL;DR"
   color="border-amber-400"
   bg="bg-amber-400/20"
   content="
     <p>We’ve got three major upgrades lined up, all happening no matter what — the only question is what should come first:</p>
     <ul>
       <li><a href='#-collaboration'>🤝 Collaboration</a> → real-time editing with Yjs + encrypted sync.</li>
       <li><a href='#-plugins'>🔌 Plugins</a> → build your own editor blocks in Beaver with JavaScript.</li>
       <li><a href='#-ai-but-done-right'>🤖 AI, But Done Right</a> → privacy-first AI with on-device models & BYO tokens.</li>
     </ul>
   "
%}

{% include poll.html poll_id="feature-vote" question="Which feature should we build next?" options="Collaboration, Plugins, AI" ends_at="2025-09-10T17:00:00+02:00" %}

# 🎮 Side Quests

While developing these three major updates we'll still work on fixes and improvements to existing features, we also plan to introduce widgets in Pocket and other small nice to have features along the way, we also plan to release our WebDAV plugin as a standalone npm package, just as we did for [capacitor-spotsearch](https://www.npmjs.com/package/@daniele-rolli/capacitor-spotsearch) and [capacitor-scoped-storage](https://www.npmjs.com/package/@daniele-rolli/capacitor-scoped-storage) we are also working on hosting Beaver Notes in Docker and other small projects, meanwhile we'd really appreciate your help documenting and developing while we work on these three major promises.

# 🧢 Swag That Supports

Speaking of side quests… what if there was a way for you to support the development of Beaver and get some merch in return?
It’s a win–win, every purchase directly helps fund Beaver Notes’ ongoing development, while you get some cool swag to show off your support. We’d love to hear if you’d be interested in helping us grow Beaver in this way. Your feedback will help us shape the first wave of designs and decide what to bring to the store. We’re aiming to have a storefront ready by June, and in the meantime we’ll be sharing some design ideas here for you to check out. Stay tuned and let us know what kind of merch you’d actually be excited to rock!

**👉 Follow us on social media to discover more updates and sneak peeks, and don’t hesitate to leave a comment if you’re interested, your input really helps us decide what merch to make!**

## Thank You 💖

As always the last, but most important, paragraph of this article is dedicated to our users, maintainers, contributors, donors, and everyone who supports Beaver in their own way, to whom I owe my deepest gratitude. Without you, none of this would be possible. A heartfelt thanks to the whole community, you're amazing, I can't wait for you to enjoy the new version of Pocket and Notes. And if you want to help us improve Beaver you can always [join us](<https://docs.beavernotes.com/beaver%20notes%20(dev)/2025/01/03/How-to-contribute.html>)
