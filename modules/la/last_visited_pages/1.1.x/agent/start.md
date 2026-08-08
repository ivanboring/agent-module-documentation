<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Last Visited Pages (last_visited_pages) — agent index

Tracks the routes a user visits (event subscriber) and renders them in a **block** — title, URL,
time. Version **1.1.0**. Core `^8 || ^9 || ^10 || ^11`. Depends on core `block`.
Settings at `admin/config/last-visited-pages-settings` (max links per block).

**Privacy surface — this is per-user browsing-history tracking.** Fine and expected for
authenticated users who benefit and can see the feature. Before enabling broadly, decide:
- whether **anonymous** users should be tracked (more numerous, less useful, more of a storage/
  privacy question),
- where history is stored and how long it is kept.

Small and self-contained: subscriber + block + settings form + cache invalidation.