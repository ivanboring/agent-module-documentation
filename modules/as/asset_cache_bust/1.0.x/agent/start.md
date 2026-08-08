<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Asset cache bust — agent index

Re-adds a **cache-busting query string to aggregated CSS/JS** (overrides the collection renderers) — clients/
CDN fetch new aggregates instead of stale ones. Version **1.0.6**. Core `^10.5||^11`.

Performance/front-end — affects asset URLs; no content/access role.
