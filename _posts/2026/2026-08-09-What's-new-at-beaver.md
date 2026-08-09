---

layout: post
title: "What's new at Beaver"
date: 2026-08-07
author: "Daniele Rolli"
github: Daniele-rolli
label:
 - Community
image: /assets/img/2026/2026-08-08.png
excerpt_separator: <!--more-->
---

I've been quietly building away behind the scenes for a while, and I think it's finally time to open the curtain a little. This post is a look at where Beaver Notes is headed, covering Beaver Sync's pricing, how I'm thinking about privacy and security, what's coming to collaboration, a few ideas I'm exploring around AI (no, I'm not handing the keys to the robots 🤖), and two big features landing later this year. There's a lot to unpack, so let's get into it.<!--more-->

## Beaver Sync

Beaver has five plans. Four are available to everyone, and one (Enterprise) is custom, so you'll need to talk to sales.

- **Free**: the full Beaver Notes, no strings attached.
- **Starter** ($4/month): 30 days of note history, 10 GB of storage.
- **Pro** ($9/month): a full year of history, 50 GB of storage.
- **Team** ($12/seat/month): a full year of history, 100 GB of storage plus 25 GB per seat, so your space grows as your team does.
- **Enterprise**: custom history retention and customizable storage, built around your organization's needs.

Every plan, including Free, includes encrypted cloud sync. The difference is infrastructure: on Free, you bring your own cloud. On paid plans, Beaver provides the storage. The engine behind the scenes stays exactly the same either way, so everyone gets the same fair treatment regardless of what they pay.

That's part of a bigger goal: I want Beaver to grow into a company, but not another large, soulless big tech player. Think of it more as the Steam of the corporate space: built by someone who uses the product, accountable to the people who pay for it, and not chasing growth and profits at the expense of trust.

### Privacy isn't a feature. It's the default.

Every plan gets encryption. Your notes, your assets, anything coming from your device is encrypted before it ever leaves. Beaver Sync also goes out of its way to minimize what it knows about you. Passwords and emails are encrypted and anonymized, and so is metadata. The goal is to hold as little data as possible.

The one place where data can't be fully anonymized is payments. For legal reasons, financial records can't be deleted or fully obscured under most regulations, so rather than pretending otherwise, that data is kept isolated and only retained for as long as required.

Emails are a good example of how far this has been pushed. Beaver Sync uses a third-party service (Resend) to send transactional email, but Resend never sees your actual address. Instead, the server generates a random string tied to a server-side address; Resend only ever sees that string. The server is the only place that knows which string maps to which real inbox. I want to be upfront that Resend isn't a zero-knowledge provider by design, and there seem to be none in this space, so this redirection is the best way of keeping your real email out of a third party's hands.

### Real-time collaboration

Real-time multiplayer collaboration will be available on every Beaver Sync plan. Workspaces start from the base plan, with shared Workspaces and permission management in Team and Enterprise plans, just like Guest access, for the times you need to loop in someone outside your organization. Admin dashboards come with Team and Enterprise, while auditable logs, SSO, and SAML are reserved for Enterprise.

GDPR data export, on the other hand, is available on every plan, including the free tier, and you can export it straight from Beaver Notes. That's not a negotiable feature. Although I'd like everyone to stay, you should always have the right to leave with your data.

## Where Beaver stands on AI

Let's be honest about the state of AI right now. Big tech has made billions training models on data that was never theirs to take. People are exhausted hearing about AI in every product, even their fridge and washer, and frankly, I understand why. I'm tired of it too.

What we were promised was that AI would make people's lives easier. What's actually happened, in a lot of cases, is people getting replaced, students outsourcing the thinking, an ocean of low-quality generated content, unreliable output, and a very real environmental cost on top of it all. Throwing more AI at the problem isn't the fix. I think the fix is being disciplined about where and how it shows up.

My position, laid out in the AI policy on GitHub, is simple: AI can improve your performance, but it shouldn't replace you. It's a tool to remove friction from your workflow and your thinking, not a replacement for your brain. It should help you think and work better while you stay in the driver's seat.

Beaver will implement a two-level approach to AI: on-device and cloud, completely independent from each other, in a way that takes cues from how Apple approached on-device machine learning long before "AI" was the term everyone used for it.

**On-device.** Small, local models such as embeddings, rankers, and speech recognition run entirely on your machine. This powers smarter semantic search, audio note transcription, and better classification and ranking to help you find things. This is the same category of feature Apple shipped for years without ever branding it "AI": things like recognizing a verification code in a notification and surfacing it on your keyboard, or noticing a dollar amount in a text and suggesting Apple Pay. Quiet, fast, and non-invasive.

This footprint is small too: under 100 MB of storage and about 1 GB of RAM, with models downloaded once and run locally from then on. Best of all, if you just want better search without full-fledged AI capabilities, you don't have to use the cloud at all.

**Cloud, when it's actually useful.** For heavier tasks, I'm considering partnering with two providers I believe take ethics seriously:

- [**Mistral**](https://mistral.ai/), a French AI company aligned with European values of privacy and dedicated to the development of open-source models.
- [**Regolo**](https://regolo.ai/), an Italian company focused on zero-data retention and environmental sustainability, with multiple certifications to back up their claims.

I'm pretty interested in Regolo, as it offers zero data retention, is hosted in Europe, and runs infrastructure without wasteful water cooling, using renewable energy. That addresses the two things I think are most broken about AI today: privacy and environmental cost. I'm still in the early stages of due diligence with both partners. I want more than logos on a page; I want verified retention policies before I lean on them fully.

The workflow is pretty simple: when you ask a question that needs more than the on-device models can provide, they first figure out which of your notes are actually relevant. Only that small, relevant slice is sent to the larger cloud model to process your question and deleted afterward. Your entire workspace never leaves your device. The data sent to the cloud is deleted from the server once the answer is returned, so there's nothing sitting around afterward. In other words: the AI gets the context it needs, not your entire life.

On the Free tier and others, you'll be able to bring your own AI provider, use your own self-hosted model, or skip AI entirely. Paid tiers include AI access with usage limits, smaller models on lower tiers and larger ones as you go up. Since the costs of inference are relatively low, Beaver Sync will keep the same pricing model. I want AI to feel integrated when you want it, and to disappear completely when you don't.

## Databases, coming October

Later this year, Beaver is introducing databases, aiming for the kind of flexible database structure Notion popularized while fixing what I think Notion never quite got right. The database types will be familiar, but formula configuration is where I want to differentiate. Think Airtable's approach to fields, but pushed further. You'll be able to describe what you want in natural language and have a formula generated for you, fully editable afterward. Formulas shouldn't be intimidating. I want database power to be accessible to people who'd normally avoid it, while those who are fluent in formulas can skip the natural-language step and write their own formulas.

## Plugins, coming January

Plugins are the other big piece landing in January, with a strong permission model. Every plugin runs sandboxed, gated behind Access Control, a permission manager that controls all traffic to and from it. Plugins have to ask for permission for anything they want to do, just like apps on mobile.

Plugins work on two levels:

- **Editor-level:** add new blocks to the editor itself.
- **Workspace-level:** connect Beaver Notes to the outside world, similar to Notion's connectors. Pulling your GitHub issues into a database, for example, or syncing with other tools you already use.

Plugins will go through a beta period before January, followed by a full release at launch. My goal, combined with community contributions, is to have at least fifteen officially supported plugins at launch. Everything gets vetted and published on GitHub, and you'll be able to browse and install plugins from plugins.beavernotes.com or directly in the app.

That's where things stand. I know this is a lot between Beaver Sync, AI, databases, and a plugin ecosystem, but I think it adds up to a product that respects your time, your data, and your intelligence. More details on each of these as I get closer to shipping. And, as always, I want to express how grateful I am to every user. Beaver exists because of you. Your testing, bug reports, and contributions are what make it possible. If you'd like to get more involved, whether through feedback, documentation, or code, here's how you can help: [Get involved](https://docs.beavernotes.com/Dev/How-to-contribute/). Thank you for being part of this!
