<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Email Formatter (email_formatter) — agent index

Display options for core's **Email field** beyond a plain `mailto:` link — plain text, custom link
text, partial masking. Version **2.0.0-rc3**. Core `^10 || ^11`. Depends on `field`.

**Be honest about obfuscation in both directions.** Splitting an address across markup, reversing it
in CSS or assembling it in JS defeats **naive** scrapers, which is most of them — a real spam
reduction. It does not defeat a scraper that renders the page. **Friction, not a control.**

**And it has a cost that is easy to miss:** a JS-assembled address is absent for some assistive
technology strategies, not selectable or copyable, and invisible without scripting. Where an address
genuinely needs protecting, a **contact form** is usually better — it removes the address rather
than hiding it.