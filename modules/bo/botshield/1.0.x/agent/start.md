<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# BotShield — agent index

**Bot classification, rate limiting, blocking, geo enrichment + reporting** (mitigate scraping/abuse/attack
bots). Config at `botshield.settings`; provides permissions. Version **1.0.8**. Core `^10.3||^11`.

**Security-positive** (bot mitigation). **App-layer** — mitigates application bot abuse, not true network/
volumetric floods (use CDN/WAF); blocks by **client IP**/geo (ensure real client IP behind a proxy; IP
rotation can evade). No access role beyond permission.
