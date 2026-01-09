---
layout: post
title: "Leaping into the new year"
date: 2026-01-08
author: "Daniele Rolli"
github: Daniele-rolli
label:
  - Community
image: assets/img/2026/2026-01-10.png
excerpt_separator: <!--more-->
---

Happy New Year, everybody! The past year has been a really exciting one. We’ve grown a lot, not just as a piece of software, but more importantly as a community. <!--more--> We want to take some time to celebrate what we accomplished together and share what’s coming in 2026.

# Starstruck community

This year, Beaver grew significantly, gaining over 500 stars and moving from roughly 600 to more than 1.1k on GitHub. This growth is a clear signal of increasing adoption and interest in the project.

Development is still largely maintainer-driven, with most of the work handled by me, but the community’s support has made a real difference. A huge thanks goes to moabeat-berlin for maintaining the AUR package, to everyone who opened issues and shared feedback, and to SignPath, our partner for Windows code signing, as well as the other maintainers who help keep Beaver reliable and secure.

A special mention goes to Brenda Zarco Tenorio, who reached out personally with thoughtful and generous UX feedback that helped shape recent improvements.

Going into the new year, our focus is clear: growing community involvement and turning more users into contributors.

[![Star History Chart](https://api.star-history.com/svg?repos=beaver-notes/beaver-notes&type=date&legend=top-left)](https://www.star-history.com/#beaver-notes/beaver-notes&type=date&legend=top-left)

# A look in the mirror

When I first started developing Beaver Notes, my goal was to build a small, private, and polished note-taking app. I wanted to avoid the common pitfalls of other note apps, from privacy concerns to cluttered UIs. Later, I decided to make it open source so others could contribute and enjoy the app as well.

Looking back, I realize that while we’ve managed to keep a clean and polished UI, some issues, like notes losing formatting, were sometimes unavoidable in early development. I haven’t solved every problem, but the process has been a tremendous learning experience. I’ve loved hearing from people who use Beaver every day and share their feedback.

This year brought many big changes, some things broke, some improved the app, but overall, Beaver is almost unrecognizable compared to 2023, and even compared to this time last year. We’ve made mistakes along the way, including in 4.2.0, but we’ve also grown a lot. As we work on 4.3.0 and beyond, our focus is not only on improving the app itself, but also on growing community involvement, improving documentation, and lowering the barrier for contributions. We want more users to share feedback, submit improvements, and help shape Beaver into the polished, reliable note-taking app we’ve always envisioned.

# Zero new features

You might be wondering what we’re working on for the first release of the new year. For Beaver Notes 4.3.0, we’re taking a page straight from Apple’s 2009 playbook: like macOS Snow Leopard, this release will introduce no new features. Instead, it will focus entirely on bug fixes, mainly targeting the editor.

We’re addressing issues such as collapsible headings, PDF exports, editor bugs, and some UI refinements. At the same time, we haven’t been idle during the holidays. Much of our effort has been focused on preparing the next big updates: Beaver Notes 4.4.0 and the rewritten Beaver Pocket.

This approach ensures a more stable and polished foundation, allowing future releases to introduce major improvements without compromising reliability.

# Sometimes you need to start over

Developing Beaver Pocket has been a valuable learning experience, teaching me a lot about mobile development and managing platform constraints. At the same time, maintaining two separate codebases in different languages has held Beaver back and slowed down progress.

To address this, we’re rewriting Beaver Pocket in Vue. Work on the new version started before the holidays, and we already have a solid proof of concept that will be shared in the coming weeks. This rewrite will maintain continuity with the current beta program, so users will simply need to update to continue using the app. Beyond streamlining development, it will make future improvements, bug fixes, and plugin support faster and more reliable across both mobile and desktop platforms.

The rewrite also gives us the opportunity to implement more native features, from improved image selection to audio playback and haptic feedback, providing a richer and more responsive experience on mobile devices.

# Going on a cruise, kinda

If you’re not very active on GitHub, you might have missed the discussion about running Beaver Notes in a Docker container (#342). With the Beaver Pocket rewrite, we realized we could take a lighter, more flexible approach.

Instead of packaging the full desktop app in a container, we’re planning a web-based version built on Beaver Pocket’s codebase. While it will have more constraints than the desktop app, this version will allow anyone to self-host their own Beaver instance with minimal setup.

This gives users the freedom to run Beaver in environments like servers, private clouds, or local networks, while keeping the experience familiar. Think of it as a “cruise mode”, a lighter, more portable version of Beaver that doesn’t compromise on the core note-taking experience.

# Big changes on the horizon

Starting with Beaver Notes 4.4.0 and the next Beaver Pocket beta, we’re completely reworking how sync works. The new system uses a commit-based model, where changes are saved as individual blocks in separate files. Once changes accumulate, they’re compressed into a single base file. This approach prevents edits made on multiple devices from overwriting each other, ensuring that your work is safe no matter where you make changes.

We’re also aiming to introduce settings sync and encryption. The goal is to give users a seamless, secure experience without relying on third-party APIs or SDKs. You’ll simply choose the path to the cloud service you want to use, like Google Drive or Dropbox, and sync will work automatically. On Android, some services may require third-party connectors, but we’re aiming to make this as simple as possible.

These changes also open the door for future improvements such as faster sync, better conflict resolution, and integration with plugins across devices. By tackling these foundations now, we’re laying the groundwork for a more reliable, private, and flexible note-taking experience in both Beaver Notes and Beaver Pocket.

# Expanding the editor

Plugins allow us to introduce new functionality without bloating the editor. With the Beaver Pocket rewrite, we are removing the largest barrier to a plugin ecosystem by unifying both applications under the same language and architecture. This makes plugins easier to develop, maintain, and distribute, while allowing them to ship simultaneously on both platforms.

Plugin development will begin once a stable version of Beaver Pocket is available in app stores, optimistically in early summer 2026. Plugins will be distributed through a community store hosted on GitHub and accessible both via the web and directly from the app UI. Developers will be able to verify their plugins, adding an additional security layer on top of the mandatory review process every plugin must pass.

Initially, plugins will only be able to interact with the editor. Access to notes and other data will require explicit permissions, which can be revoked at any time per plugin from the app’s settings. We will provide an npm package that exposes Beaver’s core plugin API, covering tasks such as plugin registration, permission requests, and note access.

Any breaking API changes will be announced on both the blog and GitHub. When possible, we will handle changes at the API layer to avoid breakage and provide developers with sufficient time to update their codebases.

For plugins to be available across devices, users will need to enable settings sync. Without it, plugins will remain local to a single device.

We are also considering plugin monetization through license keys, limited to three devices per license. This approach avoids user accounts and preserves privacy. Beaver would take a 10–15% cut from each transaction.

Some existing features, such as Mermaid blocks, will be migrated into plugins, allowing users to customize their editor experience by enabling only the functionality they need.

# Moving forward together

Beaver wouldn’t be where it is today without the people using it, testing it, and speaking up when something doesn’t work. 2026 is about building on that momentum by making it easier to contribute, easier to extend, and easier to trust. Whether you’re reporting bugs, sharing ideas, maintaining packages, or writing code, every contribution matters. The next phase of Beaver is being shaped in the open, and the direction it takes depends on the community around it. Let’s keep improving it, together.

# Thank You 💖

Beaver exists because people use it, test it, report problems, and contribute improvements. Thanks to everyone who helped move the project forward this year.

If you want to be more involved, whether through feedback, documentation, or code, here’s how to get started: [Get involved](https://docs.beavernotes.com/beaver%20notes%20%28dev%29/2025/01/03/How-to-contribute.html)