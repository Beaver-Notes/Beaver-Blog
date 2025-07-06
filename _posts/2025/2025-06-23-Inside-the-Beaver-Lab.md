---
layout: post
title: "Inside the Beaver Lab"
date: 2025-07-06
author: "Daniele Rolli"
github: Daniele-rolli
label:
  - Community
image: assets/img/2025/2025-06-24.png
excerpt_separator: <!--more-->
---

**It’s about time we released an update, isn’t it?**<!--more-->
This article was originally supposed to go out on April 30th under the title **“Head in the Cloud.”** Then it was pushed to May 4th. But I got swamped with work, and with time being tight, I chose to code rather than write.

Anyway, here’s your not-so-monthly recap of what we’ve been up to over the past three months.

> **TL;DR**
> We’re hard at work on cloud sync for Beaver Pocket ahead of the final release candidate. We built one of our most complex components yet, redesigned from the ground up. Beaver Notes 4.0.0 was released a month ago with a bunch of bug fixes and improvements, and 4.1.0 is already underway. As always, contributions of any kind are welcome.

## 🦋 Catching Butterflies

First, the old stuff. In 4.0.0, we fixed long-standing bugs: note linking now works, copy/paste behaves properly, you can write under tables, margins when tiling are fixed, and pasting into code blocks is smoother. Tagging with the keyboard works again, too.

We also improved the recording UI with better styling and pause/resume buttons, made sharing `.bea` files seamless, and upgraded Electron from version 31 to 35. Plus, behind the scenes, sync got a major speed and storage boost.

## 👀 What’s Coming in 4.1.0

This release won’t be packed, but it’s a stepping stone to finally releasing Pocket. We overhauled one of the most complex blocks in Beaver Notes, paving the way for a Beaver Pocket beta. Over the past month, we've been fixing and improving Beaver’s drawing component, which is now better than ever and boasts many features, including some experimental ones like shape recognition for circles and lines.

We’re also working on adding Markdown and HTML support for sharing notes, along with improved Markdown importing. Our goal is to let you export all your data in version 4.2.0, giving you even more control.

## ☁️ Your Data, Always With You

Now onto Pocket. The sync overhaul we hinted at earlier was actually due to how Pocket handled sync. Since Pocket interacts directly with cloud providers, we decided it would be better to have snappy, short interactions rather than large data transfers during every sync. However, this meant reimplementing everything from login to sync, which is why the release candidate was delayed.

Pocket now syncs with Google Drive, iCloud (on supported devices), OneDrive, Dropbox, and, last but not least, WebDAV, with support for self-signed SSL certificates and HTTP.

We’re aiming to implement opt-in encryption project-wide in Beaver Notes 4.2.0/4.3.0 and Pocket 1.2.0 (Stable). Speaking of future plans, you might want to keep an eye out for Git sync, proposed by [naguam](https://github.com/naguam) in issue [#293](https://github.com/Beaver-Notes/Beaver-Notes/issues/293).

## 📱 Coming With You Wherever You Go

Beaver Pocket 1.0.0 RC isn’t just about sync, it’s the missing piece in the Beaver Pocket release puzzle. This commit brings a host of improvements: PDF export support, a completely overhauled UI, better search, note sharing, gesture navigation, multiple icon options, and much more.

We’re planning to reopen the beta on TestFlight and begin Android beta testing in the next few days. Our goal is to gather the feedback we need to perfect the app for a full release by the end of August or early September.

Don’t hesitate to share your experience as soon as you get your hands on Pocket! Please submit feedback and issues through GitHub so we can track everything efficiently.

## 📰 We Made Headlines... Kinda

Beaver Notes 3.9.0 was featured in the May 2025 issue (No. 327) of _Linux Format_, under the section _“The best new open source software on the planet.”_

You can check out a snippet of the article on [Pocketmags](https://pocketmags.com/us/linux-format-magazine/may-2025/articles/beaver-notes).

## 👀 Our Icon Got Stolen

Apparently, Beaver’s icon was just too cute not to steal. Someone used it for an infostealer virus. 😐
The virus has since been reported, but I first heard about it from a Redditor who DMed me after spotting it in a YouTube video, _see [minute 6:25 here](https://youtu.be/t-yyVjs-5eA?t=385)._

This situation also made us realize something: Windows is currently the only platform where users see a warning screen when downloading Beaver Notes. That means users can’t always tell whether they’re downloading the real deal or a potential virus, especially since we don’t have code signing in place.

The main reason? Code signing is expensive, and for small open-source projects like ours, it’s not always financially feasible. That said, if you're downloading Beaver Notes from our [official website](https://www.beavernotes.com) or [GitHub releases](https://github.com/Beaver-Notes/Beaver-Notes/releases), the chances of getting anything malicious are extremely low.

Still, we know that’s not good enough. So, we sent a few emails and are now in the process of obtaining a code signing certificate **for free**. We'll share more updates as soon as it’s officially approved.

## 🔮 What the Future Holds

Beaver has grown a lot over the past two years, yep, it’s already been two years since the first release on July 13th, 2023. The app is completely different now. When I first released it, I didn’t know it would grow into a project this big, or at least, big to me.

The app will continue to grow. We have ambitious plans, from support for self-hosted Ollama instances to editor plugins and much more. Not everything will make it to production, but I’m confident Beaver a year from now will look completely different from today.

To keep up the momentum, we could really use more contributors. Whether you're a developer, designer, writer, or just passionate about open source, there’s plenty of room to get involved.

## Thank You 💖

We can’t talk about the future without talking about our community. I’m personally grateful to all the users, maintainers, contributors, donors, and everyone who supports Beaver in their own way. Without you, none of this would be possible. A heartfelt thanks to the whole community, you’ve been amazing. I hope you’ll stick around for Beaver’s birthday on July 13th! And I hope you enjoyed the article.

## 🎨 Artwork

Let’s admit it, this artwork is my best one yet. Since I had a free afternoon, I decided to have some fun and work on it.
