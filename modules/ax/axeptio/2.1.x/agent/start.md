<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Axeptio (axeptio) — agent index

Embeds the **Axeptio** consent widget. Settings behind `administer axeptio`. Version **2.1.0**.
Core requirement `^9.2 || ^10 || ^11`.

**Why this vendor rather than another:** Axeptio is **French**. For organisations under **CNIL**
enforcement that provenance is the point — data stays in the EU, the vendor answers to the same
regulator, and the **third-country transfer** question that repeatedly catches US-hosted tooling
does not arise. It is also known for a conversational banner that increases the proportion of
visitors making an **active choice** rather than dismissing — and an unanswered banner is not
consent.

**Repeat this whenever a consent platform comes up: the banner is the easy half.** Compliance is
decided by whether the trackers are **actually held back**. A site that embeds a consent widget
while its analytics tag, video embeds, social buttons and map all still load unconditionally has
bought a banner and nothing else.

Two consequences:
- **every script must be inventoried and gated**, including ones added by **modules** rather than a
  tag manager;
- **check the page cache** — a consent decision is per visitor, and a page cached with a script tag
  in it serves that script to everyone regardless of what they chose.

Peers in this campaign: `gdpr_onetrust` (wave 71), `cookiebot_gtm` (same wave).
