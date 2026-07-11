---
layout: post
title: "The road ahead"
date: 2026-07-11
author: "Daniele Rolli"
github: Daniele-rolli
label:
  - Community
image: /assets/img/2026/2026-06-15.png
excerpt_separator: <!--more-->
---

A lot has happened since our last post, so let's keep this one short and sweet. Here's what we've shipped, what's cooking, and how you can get your hands on the most exciting thing we've built yet. <!--more-->

## Beta 1 is just around the corner

Beaver Notes 5 beta 1 is on its way for pre-release, and I won't bore you with the details, but you'll be able to get your hands on it soon. We were targeting a release by the end of this week, but we've had a few hiccups with sync along the way. The sync engine wasn't up to standard, so I'm rewriting it using the `yrs` crate, a Yjs implementation for Rust. This also lets us plug in any Yjs-compatible library, such as HocusPocus, which will be one of the pillars of the upcoming Beaver Sync. We can't wait for you to try version 5 beta 1!

## Beaver Sync

Beaver Sync is the next big thing we're working on, with a target release date of the first week of September. I won't discuss features or pricing just yet, but we're working hard to bring you the best sync experience ever, while making sure Beaver Notes can both stay free and offer a premium experience for those who want it, without sacrificing any of the features you love about Beaver Notes.

Beaver Sync already has its own private GitHub repo, and we'll make it public as soon as it's ready to use. All the infrastructure will be hosted on fly.io on the Frankfurt server for now, with expansion plans for the US and Asia targeted at the first quarter of 2027. Don't worry, you'll still be able to use Beaver Sync just fine even if you're not in the EU.

### Privacy first

We self-host all the services and diagnostics ourselves on fly.io, with the one exception of email, which is handled by Resend. Rest assured, Resend will never get your email address, we've built a system that keeps it from ever being shared with anyone. All sensitive data is encrypted, along with commits, which are already encrypted at rest.

### Beta testers

Starting mid-August, we're opening Beaver Sync's beta to 10 people. We'll pick testers based on who's active around Beaver on social media and in our community spaces, so if that's you, keep doing what you're doing. Testers will be asked for feedback at least weekly, what you're using it for, what's breaking, and whether it's actually making your life easier.

## Plugins

One of the new features we're working on is a plugin system, allowing you to extend the app's functionality with custom plugins, good news whether you're a user who wants more automation or a dev who wants to build for Beaver. The target release date for this feature is the end of this year. Plugins will be sandboxed, and their access to the app's data will be managed by "Core Access," a system we're building to manage plugin access and permissions, much like on a phone. Plugins will be able to integrate with the app's data, opening up opportunities for automation and customization, and will be able to add blocks to the editor. Unlike other apps, plugins in Beaver won't be able to modify the UI outside of the editor, this choice was made to ensure stability and security, while also making the app more predictable and easier to maintain.

## Translating Beaver

We've migrated from Traduora to Weblate, now living at translate.beavernotes.com. One favor to ask: please hold off on translating for now. Strings are still shifting during beta, and we don't want anyone to lose work to a moving target.

## Docs and Website Refresh

The docs got a UI redesign to match the new look, now live at [docs.beavernotes.com](https://docs.beavernotes.com), and we're deep into an overhaul of beavernotes.com itself to be more modern, more interactive, and built to welcome more people into the community.

# Thanks to everyone 💖

Lastly, I want to express my deepest gratitude to every user, Beaver exists because of you. Your testing, bug reports, and contributions are what make it possible. If you'd like to get more involved, whether through feedback, documentation, or code, here's how you can help: [Get involved](https://docs.beavernotes.com/Dev/How-to-contribute/). Thank you for being part of this journey!
