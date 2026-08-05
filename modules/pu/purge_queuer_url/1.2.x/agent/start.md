<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# URLs queuer (purge_queuer_url) — agent index

Purge queuer that invalidates by **URL/path** instead of cache tag, backed by a traffic
registry. Composer: `drupal/purge ^3.4`. Core requirement `^10 || ^11`.

Key facts:
- **Why it exists:** Purge's native unit is the cache tag, which many CDNs and older Varnish
  setups cannot act on. This records the URL↔tag relationship from live traffic so a tag
  invalidation can be translated into a list of URLs.
- `src/StackMiddleware/` sits **in the request path** and writes to the registry
  (`TrafficRegistry`, `TrafficRegistryInterface`). Two operational consequences to raise:
  - the registry table grows with traffic and needs a pruning/retention plan;
  - middleware on every request has a (small) per-request cost — measure on a busy site.
- Drush integration via `src/Commands/` + `drush.services.yml`; check
  `purge_queuer_url.post_update.php` and `CHANGELOG.md` before upgrading.
- It is a *queuer*, one role in Purge's queuer/queue/processor/purger pipeline — it still needs
  a purger that can talk to the actual cache.
- `.info.yml` reports the legacy `version: '8.x-1.2'`.
