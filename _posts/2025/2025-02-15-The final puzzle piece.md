---
layout: post
title: "The final puzzle piece"
date: 2025-02-15
author: "Daniele Rolli"
github: Daniele-rolli
label:
  - Release
image: assets/img/2025/2025-02-10.png
excerpt_separator: <!--more-->
---

Our plan for world domination is coming together, piece by piece! <!--more--> Beaver Pocket's release candidate is on the horizon, Beaver Notes 3.9.0 is about to launch, and we've made significant improvements to our docs and blog.

<div class="bg-indigo-600 bg-opacity-25 rounded-md mb-4" markdown="span">
Before we start if love using Beaver and wanna help us improve it. Check out <a href="https://docs.beavernotes.com/beaver%20notes%20(dev)/2025/01/03/How-to-contribute.html">the docs</a> to learn how your involvement in Beaver can make a huge difference.
</div>

# Improving, Fixing, and Debugging

Beaver Notes 3.9.0 is very much the "Snow Leopard" of Beaver Notes releases, polished and focused on getting things just right. Like macOS Snow Leopard before it, this update brings almost "zero new features." Almost. We did sneak in something new: accent colors.

But what really makes this release stand out is how much better everything is. **Search**, for example, is finally usable. Just press mod + F to bring it up, and you'll find navigation, case-sensitive search, and functional replace buttons all at your fingertips. The **command menu** has also been improved, now properly replacing your query with the block you want to insert.

And then there’s paste. Yes, **paste** is finally fixed. No more lost formatting, no more time wasted fixing your notes. **PDF exports** have also been improved, along with a host of other improvements that make this version of Beaver Notes just plain better.

# Almost Ready for the Big Release

Pocket has been one of the toughest projects I’ve ever built, way harder than Beaver Notes, as we had to work within the limitations of both iOS and Android. The current release candidate might not be the final one, as I’m still not completely satisfied with the drawing component’s implementation.

That said, this release brings all the same fixes from Beaver Notes, along with **better cloud sync**, **style improvements** on Android, and much more, including **PDF support** and **note sharing**.

# A Pencil, an iPad, and a Lot of Coffee

As I mentioned before, the current drawing component isn’t where I’d like it to be. Even though Beaver is primarily a text-first note-taking app, that doesn’t mean features like drawing should be lacking. The first and current iterations of the drawing component are based on [Tiptap’s drawing example](https://tiptap.dev/docs/examples/advanced/drawing). In hindsight, this may not have been the best approach, since their example is built on d3.js, which isn’t ideal for what we envision the drawing component becoming.

After several weeks of research, I’ve concluded that we’re better off developing something in-house. We’re steering clear of [TLDRAW](https://tldraw.dev) and [Excalidraw](https://github.com/excalidraw/excalidraw), both amazing projects but, unfortunately, only available for React. Additionally, from what I’ve seen in other apps, they’re not well-optimized for mobile devices. Instead, I’m more interested in a combination of the [Perfect-Freehand](https://github.com/steveruizok/perfect-freehand) library and a shapes library to create a more tailored solution. Of course, we’re open to your suggestions in the comments.

# Docs, Finally!

Yes, you heard it right, we're finally talking about docs! The first big improvement is the design. We've switched from Docusaurus, which is amazing but didn’t quite fit our needs, to a custom Jekyll, based solution built from the source code of the blog. It’s heavily inspired by [GitHub’s docs](https://docs.github.com/en), which I personally find to be an amazing design for a documentation website.

We’ve also rewritten most of the pages, which, to be honest, were previously pretty embarrassing. With this update, I hope we’ll attract more people to get involved in this amazing project and help us make Beaver better for everyone.

# The Big Move

A couple of weeks ago, you may have noticed our main website, docs, and blog going dark for a bit. Well, that was a result of a big move to GitHub.

Now, everything from our website to our documentation is hosted on [GitHub Pages](https://pages.github.com), bringing a more streamlined workflow, easier deployment, and almost nonexistent costs, aside from domain expenses. Speaking of which, we’re making the most of our domain by placing everything under beavernotes.com.

This move not only simplifies our development process but also makes it easier for the community to contribute, suggest improvements, and track changes. If you’re interested in getting involved, keep an eye on our GitHub repositories, we’d love to hear your feedback!

We’re also going to fork the current [Blog](https://github.com/Beaver-Notes/Blog-Template) and Docs repository so that you can use them as templates for your own projects.

# Thank You 💖

Thanks to all our users, contributors, and donors for making Beaver possible, and thanks for being part of this amazing community. Hope you enjoyed the article! If you’d like to help build and improve the project, don’t hesitate to [Get Involved](https://docs.beavernotes.com/beaver%20notes%20(dev)/2025/01/03/How-to-contribute.html).

