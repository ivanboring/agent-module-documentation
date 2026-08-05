<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Site Meta (sitemeta) — agent index

Page title / description / keyword meta tags via configurable **Site meta entities**, driven by
core **`token`**. Permissions: `add site meta entities`, `administer site meta entities`.
Version **8.x-1.7**. Core requirement `^9.3 || ^10 || ^11`.

**Position against the obvious alternative.** `metatag` dominates this space — comprehensive, well
maintained, and correspondingly large (tag groups, per-bundle defaults, Open Graph, Twitter cards,
Schema.org, a substantial configuration surface). A smaller module that does titles and descriptions
well is reasonable for a site whose requirement is exactly those.

**Two things to check before choosing it:**
1. **What it covers.** Any site that gets **shared** eventually wants **Open Graph** and Twitter
   cards — at which point this becomes a stepping stone to installing `metatag` anyway. **Running
   both means two systems writing to the same `<head>` with no arbitration**, producing duplicate
   tags that search engines handle unpredictably.
2. **Tokens vs literals decides whether it scales.** A rule per page is unmanageable past a few
   dozen; a **token-driven rule per bundle** is one rule for a thousand nodes. The `token`
   dependency suggests the latter is intended — confirm per-bundle defaults are the primary mode.
