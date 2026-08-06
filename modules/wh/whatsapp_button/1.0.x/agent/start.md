<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# WhatsApp Button (whatsapp_button) — agent index

Block containing a button that opens a **WhatsApp conversation** with a configured number. Package
`Social Media`. Version **1.0.4**. Core requirement `^9 || ^10 || ^11`.

**The mechanism explains the module:** a `https://wa.me/<number>?text=<message>` link opens the app
on a phone or WhatsApp Web on a desktop, optionally pre-filled. **No API, no account beyond the
phone number, no cost.**

**Do not confuse it with `whatsapp` (wave 74)**, which uses the **Business API** to *send* messages
programmatically and needs an app, **approved templates** and a **per-conversation charge**.
**This is a link; that is an integration.**

**Three things worth attaching:**
1. **The number is published** — it is in the page source for anyone to harvest. Use a **business
   number**, not someone's personal mobile.
2. **A conversation started this way is unmanaged.** It arrives in an individual's WhatsApp — **no
   shared inbox, no assignment, no record, no continuity when that person is away**. A
   business-process question before a technical one.
3. **It is a link, not an embed**, so it loads nothing and raises **no consent question** — the one
   respect in which it is simpler than every other social integration.

Why the channel: in much of Latin America, South Asia, Africa, the Middle East and southern Europe
this is **how people contact a business** — more reliably than a phone call, far more than a form.
