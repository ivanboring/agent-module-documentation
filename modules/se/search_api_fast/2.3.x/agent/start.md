<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Search API Fast (search_api_fast) — agent index

Parallel indexing for **Search API** using simultaneous workers. Depends on `search_api ^1.0`.
Core requirement `^9.5 || ^10 || ^11`.
Settings at `/admin/config/search/search-api-fast` (`administer site configuration`).
Drush integration via `drush.services.yml`.

Key facts:
- **Drush is the intended entry point.** Parallel indexing belongs in a terminal or job runner,
  not a browser request — a web request has a timeout and one PHP process.
- `src/SearchApiFastQueue.php` distributes work across workers; `src/Constants/` and the settings
  form control configuration.
- **The bottleneck it addresses** is usually Drupal bootstrapping and rendering each item, not the
  search backend — which is why parallelising helps at all.
- **Worker count is an infrastructure decision, not a preference.** Workers compete for database
  connections, PHP processes and backend throughput. Too many converts a slow reindex into an
  outage — and the database connection limit is usually the first thing to hit. Test on a copy of
  production before running it there.
- Pairs with `purge_control` (wave 64): a mass reindex often accompanies mass entity operations,
  which flood Purge.
