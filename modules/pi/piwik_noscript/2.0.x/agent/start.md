<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Matomo Noscript (piwik_noscript) — agent index

Adds Matomo's **`<noscript>` tracking image** to every page. Version **2.0.0**.
**Core requirement `^11.1 || ^12`** — Drupal 11.1+, reaching into a major that does not exist yet.

**Name history:** **Piwik was renamed Matomo in 2018.** The project machine name keeps the old
spelling; the description uses the new one. A search hazard, not a functional one.

**Two things to settle before adding it:**
1. **Consent applies to the noscript image exactly as to the script.** It is a tracking request to
   a third-party endpoint however it is triggered — and a consent manager that blocks JavaScript
   trackers will **not necessarily block an `<img>` inside `<noscript>`**. This is a common way
   tracking continues after a visitor has declined.
2. **The data is not comparable with the main tracker's.** No session stitching, no interaction
   events, no reliable bounce measurement — it inflates visit counts with shallow records rather
   than adding equivalent detail.

Who it actually captures is narrower and stranger than "users with JS off": text-mode browsers,
some assistive setups, script-restricted corporate environments, privacy tooling that blocks
scripts but allows images, and a good deal of automated traffic.
