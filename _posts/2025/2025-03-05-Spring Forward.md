---
layout: post
title: "Spring Forward"
date: 2025-03-05
author: "Daniele Rolli"
github: Daniele-rolli
label:
  - Community
image: assets/img/2025/2025-03-05.png
excerpt_separator: <!--more-->
---

It's finally March, and that means a new *monthly* report on the state of Beaver.<!--more--> This past month, we’ve been working on a lot, from Beaver Notes 3.9.0 to getting Beaver Pocket ready for release. It’s been a busy month, and the coming one will be even busier. So, let's dive straight in.

# There's a new drawing block in town  

Since the [last article]({% post_url 2025-02-15-The final puzzle piece %}), we have been working on a new drawing component that replaces [*d3.js*](https://github.com/d3/d3) with [perfect-freehand](https://github.com/steveruizok/perfect-freehand), so now we’re not using a hammer to screw in a screw anymore.  

Perfect-freehand is the underlying technology behind projects like [TLDRAW](https://github.com/tldraw/tldraw), which showcases just how powerful and flexible this library is. *Why not TLDRAW, then?* We initially considered using it, but since it's a React component, it wouldn’t integrate well with the desktop app, which is built in Vue. Additionally, Perfect-freehand allows for more flexibility on both the UI and logic sides.  

That said, we did take inspiration from TLDRAW to improve our own component. For example, each stroke is now rendered as its own SVG. This improves performance and allows for direct manipulation, which brings us to the *lasso tool*, which lets you resize and move items.  

The component is obviously not complete, as it’s still missing features like zooming in and pasting images. Nor is it perfect, but it lays the foundation to start porting it to the desktop version of *Beaver*. The old *d3.js*-based drawing component will remain for existing notes but won’t be available for new ones.  

# Snapshots aren't always the answer  

I've been testing sync on both the mobile app and desktop versions more frequently as we approach the stable release of Pocket. Come to think of it, our current snapshot-based sync model may not be ideal in terms of space and speed.  

So, I started tinkering with Beaver Notes' sync method and implemented a `trackChange` function that increments the local version, stores changes with a unique ID, updates metadata, and schedules a sync if one is not already in progress. This means that only the files that have changed or are new are uploaded or downloaded, rather than the entire directory being re-uploaded every time.  

Frankly, now I'm happier with how Beaver handles sync. Now comes the hard part, though, we need to implement the same thing in Pocket, which means porting `trackChange`, making sure it invokes the selected cloud provider, and then rewriting each cloud implementation to compare the `metadata.json` and upload/download only the files that have changed.  

# The phone-shaped elephant in the room  

*...so when is Pocket coming?* Well, great question. As things stand, Pocket will start its last release candidate on both the Play Store and TestFlight as soon as the new sync method is ported to it and the new drawing component is ported to the desktop app. This means it's a matter of weeks, not days, unfortunately. But as I've always stated before, it's better to not release anything rather than release a half-baked product. This doesn’t mean bugs won’t be there, but it does mean key features will work and users will be able to use the app without any major issues.  

# Ending on a positive note  

The road ahead is bumpy, and the finish line is far, but we will get there. The important thing is, Beaver is not going anywhere, and although some days it might seem like nothing is being done backstage, there's always someone coding away, even if their work is not showing on GitHub.  

*...you might be asking what you can do to help?* Well, there’s a lot, actually! Of course, donations are welcome, but if you are able to code, contributions, feedback, translations, and even help with the docs and blog are always needed. Check out our [Get Involved](https://docs.beavernotes.com/beaver%20notes%20(dev)/2025/01/03/How-to-contribute.html) page to learn more.  

# Thank You 💖  

As always, my thanks go to all our users, contributors, and donors for making Beaver possible, and thanks for being part of this amazing community. Hope you enjoyed the article!  