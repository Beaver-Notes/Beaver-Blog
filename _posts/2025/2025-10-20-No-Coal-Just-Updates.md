---
layout: post
title: "No Coal, Just the New Beaver Notes Update"
date: 2025-12-04
author: "Daniele Rolli"
github: Daniele-rolli
label:
  - Release
  - Community
image: /assets/img/2025/2025-12-04.png
excerpt_separator: <!--more-->
---

Christmas is almost here, and we’ve got some gifts for you! 🎁 <!--more--> Our 4.2.0 release is our biggest yet, packed with fixes, quality-of-life improvements, and more, making Beaver the polished app we’ve always dreamed of. We’ve also been hard at work on Beaver Pocket, getting it ready for its upcoming release. And that’s not all, we’ve got even more updates to share, so get ready!

# New Additions Arriving This Season

You probably noticed that 4.2.0 was originally planned for September. We decided not to rush it, on top of that I’ve personally been swamped and didn’t have as much time to get my hands on Beaver’s code as I wanted. After tracking down a bunch of bugs, running tests, and fine tuning everything, we’re finally ready to ship this release. Below is a quick overview of the what's new. If you want the full breakdown, you can check out the [September article]({% post_url 2025/2025-09-03-A-small-step-for-a-beaver %}). Here’s what’s new:

* Folders to organize your notes better
* Upgraded to tiptap 3 and Electron 38
* Added Arabic and Portuguese support
* Stronger security
* Fixed various link and pasting issues
* Editing embedded files now works smoothly
* `Ctrl/Cmd+A` selection fixed
* Search now finds untitled notes and folders
* Audio can be added from the `/` menu
* Option to prevent new notes from opening automatically
* Command Prompt improvements: icons, UI tweaks, folders support
* Sync improvements
* Trailing node extension added
* Ability to add previously recorded audio from the editor toolbar
* RTL/LTR options bundled with language settings
* Keyboard navigation in `/` menu improved
* Fixed new notes not opening automatically
* Better handling of embedded files and webpages
* UI polish: interface size selector, dropdowns, search bar, editor search, font size selector, text color menu, collapsible headings, checkboxes
* Upgraded flatpak runtime to 38
* Renamed from Beaver-notes to Beaver Notes
* Select and modify multiple notes

# Beaver Pocket Is on the Way

We’re also bringing Beaver Pocket up to the level of Beaver Notes, adding the full feature set along with a solid round of fixes. A few tasks still need to be finished before it reaches the stores, file handling, exporting, performance, and some UI adjustments. Some delays are outside our control, including the ongoing iOS keyboard issues (see PR [2403](https://github.com/ionic-team/capacitor-plugins/pull/2403)), but progress is steady. We’re preparing a new TestFlight beta and an open beta for the Play Store. Here’s a look at what’s coming to Pocket beyond the features already planned for Beaver Notes:

* Opt-in Spotlight support
* Custom app icons and a tinted icon option on Android
* Collapsible headings
* A redesigned storage system
* Export and import to device
* Faster startup time
* Better labels support

# Bits & Pieces

This month we’re participating in a small open-source event at an Italian high school. We’ll post everything on our social channels, along with printable versions of our posters. We’ve also added tags to the blog, and some Christmas lights for a bit of seasonal flair. On top of that, we’re preparing to launch Beaver on Product Hunt to reach more people, and we’re already listed on [OpenAlternative](https://openalternative.co/beaver-notes).

# Thank You 💖

As always, the final, and most important, paragraph is dedicated to our users, maintainers, contributors, donors, and everyone who supports Beaver in their own way. I owe you my deepest gratitude, without you, none of this would be possible. A heartfelt thanks to the entire community; you’re amazing, and I can’t wait for you to enjoy the new versions of Pocket and Notes.

We’d like to give a special shoutout to the team at [OpenAlternative](https://bsky.app/profile/openalternative.co) for helping spread the word, and to the team at [OSSing](https://ossign.org/) for supporting us with Windows code signing.

If you’d like to help us make Beaver even better, you’re always welcome to [join us](https://docs.beavernotes.com/Dev/How-to-contribute/). Happy holidays from the Beaver Team ❤️!
