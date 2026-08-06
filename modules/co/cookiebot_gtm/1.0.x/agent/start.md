<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Cookiebot + GTM (cookiebot_gtm) — agent index

Wires **Cookiebot**'s consent signal into **Google Tag Manager**, so tags fire per consent category.
Settings behind `access cookiebot gtm config` (`restrict access: TRUE`). Version **1.0.20**.
Core requirement `^8.8 || ^9 || ^10 || ^11`.

**Understand the architecture — it is where consent actually gets enforced:**
- **Cookiebot** scans, categorises and shows the banner. It **cannot stop a GTM tag firing**.
- **GTM** fires tags and **knows nothing about consent**.
- The join is Google's **Consent Mode** — consent state pushed into the data layer, each tag's
  trigger testing it. **Getting that join right is the whole compliance question.**

**Three silent failure modes to verify rather than assume:**
1. **The consent signal must arrive before any tag can fire**, or the first pageview leaks whatever
   the visitor later chooses.
2. **Tags added in GTM by someone who does not know the convention fire unconditionally** — the
   check lives in each **trigger**, not the container. The tag inventory is a **recurring governance
   task**, not a setup step.
3. **Anything Drupal itself adds is outside GTM entirely.** A module attaching an analytics script
   through Drupal's asset system is governed by none of this — and is what a scan finds.

Peers: `gdpr_onetrust` (wave 71), `axeptio` (same wave), `tealiumiq` (wave 73).
