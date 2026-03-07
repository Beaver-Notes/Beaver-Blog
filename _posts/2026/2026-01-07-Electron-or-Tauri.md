---
layout: post
title: "Electron or Tauri? Choosing Beaver’s Future"
date: 2026-01-07
author: "Daniele Rolli"
github: Daniele-rolli
label:
  - Community
  - Release
image: assets/img/2026/2026-03-10.png
excerpt_separator: <!--more-->
---

Beaver’s next release was originally planned to focus on encryption, sync improvements, and a long-awaited UI refresh. However, while working on these changes, we uncovered a problem that may require a much bigger decision<!--more-->: the technology Beaver is built on.

## Choosing Beaver’s future

We’ve been working intensively on several major improvements for the next Beaver release. These include app-wide encryption, a significantly improved sync experience, support for encrypted sync folders, and a long-overdue UI overhaul designed to make Beaver feel like a modern and polished application.

However, while optimizing the app we ran into a serious limitation related to memory and storage usage. The same app that takes about **25 MB on an iPhone** ends up being around **20× larger on macOS and 12× larger on Linux**. This prompted a deeper investigation, and the conclusion was hard to ignore. It may be time to reconsider the technology behind Beaver.

One promising direction is **Tauri**.

Unlike Electron, which bundles an entire Chromium and Node.js runtime with the application, **Tauri uses the operating system’s native WebView**. While switching would likely require some adjustments and a few beta releases to stabilize behavior across platforms, the potential benefits are significant. In practical terms, Beaver could **shrink from around 500 MB on macOS to roughly 50 MB**, including all dependencies.

Before making such a fundamental change, we want to know whether the community considers this direction important. The timing matters: once version **4.4.0** is released in its current form, migrating later could make it extremely difficult to move existing user data without risking data loss.

Moving to Tauri would also support the project’s long-term mobile plans. **Tauri can package apps for mobile platforms**, allowing Beaver and Pocket to eventually share the same codebase.

If the community decides in favor of switching to Tauri, the plan would look like this:

- **4.4.0 would be rebased**, starting from 4.3.0 with only minimal fixes and migration preparation.
- A **new development branch** would then focus on the Tauri rewrite.
- The transition itself could take **a couple of months**, including the rewrite and setting up a beta program.
- After stabilizing the desktop version, we would begin **adapting the codebase for mobile platforms**, eventually merging the functionality currently provided by Pocket, Beaver’s separate mobile app, into the same shared codebase.

This would be a significant shift for Beaver, so before committing to it we want to hear what the community thinks.

{% include poll.html poll_id="framework-vote" question="What will it be?" options="Keep Electron, Switch to Tauri" ends_at="2026-03-17T17:00:00+02:00" %}

# Thanks to everyone 💖

As I often like to remind people, Beaver only exists because users test it, report problems, and contribute improvements. This is why your opinion on the future of the app is crucial. If you want to be more involved, whether through feedback, documentation, or code, here’s how to get started: [Get involved](https://docs.beavernotes.com/beaver%20notes%20%28dev%29/2025/01/03/How-to-contribute.html)

# Artwork

This blog banner was inspired by [Nicolas Solerieu's illustration for GitHub](https://dribbble.com/shots/22903051-Homepage-hero-sketch) and hand-drawn in Procreate. I’ve hidden a few Easter eggs in the drawing, see if you can spot them.
