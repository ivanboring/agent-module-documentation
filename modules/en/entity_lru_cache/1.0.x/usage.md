<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Replaces the entity memory cache with an LRU cache.

---

Entity LRU Cache replaces the entity memory cache with an LRU (least-recently-used) cache — bounding how many entities are held in the per-request memory cache and evicting the least-recently-used ones, preventing memory bloat on requests that load very many entities (bulk operations, big migrations). It's a performance/memory tuning module. Supports Drupal 10.3+ and 11.

---

- Use an LRU entity memory cache.
- Bound cached entity count.
- Evict least-recently-used entities.
- Prevent memory bloat.
- Help bulk/migration requests.
- Replace the default memory cache.
- Serve performance/memory tuning.
- Support Drupal 10.3+ and 11.
- Configure the cache size.
- Aid performance.
- Handle entity caching.
- Reduce memory
- Support Drupal.
- Support Drupal.
- Support Drupal.
