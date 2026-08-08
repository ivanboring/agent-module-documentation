<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Cache Tags CDN Optimizer — agent index

Replaces core **cache tags for referenced entities so CDN purging clears content only when necessary**
(reduce over-broad invalidation from referenced-entity changes → better CDN hit rates). Version **1.1.0**.
Core `^10||^11||^12`.

Performance/caching — changes when content is purged, not access; no access role.
