<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Cache Utility exposes cache clearing as HTTP endpoints — Drupal caches, cache tags, PHP OPcache and APCu — so a deployment pipeline or load-balanced host can flush them with a curl call rather than shelling in to run Drush.

---

The problem it addresses is real: on a multi-server or containerised site, `drush cr` clears Drupal's caches but PHP's **OPcache and APCu are per-process**, so each web node has to be told separately, and a deploy script that cannot SSH into every node has no way to do it. This module gives each operation a URL. Twelve routes cover clear and status for Drupal caches, cache tables, cache tags, OPcache and APCu, plus configuration readouts, and a `cache_utility_admin_toolbar` submodule surfaces the actions in the toolbar; Drush commands and a settings form at `/admin/config/development/cache_utility` complete the set. The authentication model is the thing to understand before deploying it, because it is deliberately *not* Drupal's: every route is declared `_access: 'TRUE'` and each controller instead requires a shared secret in a `CU-ACCESS-KEY` header, compared against `security.accessKey` in configuration. That is a reasonable design for machine callers that have no session — but it puts the whole security of the endpoints in that one comparison and that one stored value, and this campaign's local security notes record two problems with how both are handled. The default key is empty and empty headers are rejected, so an unconfigured install is closed rather than open.

---

- Flush OPcache on every web node after a deploy.
- Clear Drupal caches from a CI pipeline.
- Clear APCu without shell access.
- Truncate cache tables that have grown large.
- Check OPcache hit rate from a monitoring system.
- Read APCu configuration remotely.
- Clear cache tags selectively.
- Flush caches while the site is in maintenance mode.
- Add cache actions to the admin toolbar.
- Run cache operations from Drush.
- Give a deploy script a cache-flush hook.
- Diagnose an OPcache sizing problem.
- Confirm caches actually cleared, with row counts.
- Clear caches on a container without exec access.
- Integrate cache flushing with a CDN purge step.
- Report cache table sizes.
- Automate post-release cache invalidation.
- Reset OPcache after a code push.
