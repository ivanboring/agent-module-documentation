<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Simplenews Stats (simplenews_stats) — agent index

Open- and click-tracking for Simplenews newsletters. Depends on `simplenews` (`^4.0`).
Core requirement `^10 || ^11`. **Current release is `4.0.0-beta3` — beta.**
Configure/report at `/admin/content/simplenews-stats`
(`configure: entity.simplenews_stats.collection`).

Key facts:
- Two **public** tracking routes, both `_permission: 'access content'` and both
  `options: {no_cache: TRUE}` (a cached response would count one hit forever):

  | Route | Path | Purpose |
  |---|---|---|
  | `simplenews_stats.hit_view` | `/simplenews-image` | tracking pixel → counts opens |
  | `simplenews_stats.hit_click` | `/simplenews-c/{tag}` | click receiver → counts, then redirects |

  `src/SimplenewsStatsAllowedLinks.php` constrains the redirect targets — that is the control
  keeping `/simplenews-c/{tag}` from being an open redirect. Treat any change there as
  security-relevant.
- Reporting routes: `simplenews_stats.stats_tab` at `/node/{node}/simplenews-stats` (custom
  access via `SimplenewsStatsAdminController::simplenewsStatsAccess`) and the entity collection
  at `/admin/content/simplenews-stats`.
- **Granular permissions** — note the last one in particular:
  - `administer simplenews stats` (**`restrict access: true`**)
  - `access simplenews stats overview`
  - `create` / `view` / `delete simplenews stats`
  - `access simplenews stats results`
  - `access simplenews stats results editable node` — see results only for nodes the user can edit
- Two entity types (stats, stats item) with dedicated storage, access-control handler, list
  builders and view builders; engine in `SimplenewsStatsEngine.php`.
- Both mail paths are supported: `SimplenewsStatsMail` and `SimplenewsStatsMailSymfony` over a
  shared `SimplenewsStatsMailBase`.

- **Portability defect:** `SimplenewsStatsAllowedLinks::__construct()` type-hints
  `\Drupal\mysql\Driver\Database\mysql\Connection` rather than
  `\Drupal\Core\Database\Connection`. On PostgreSQL or SQLite the service will not
  instantiate. Treat this module as MySQL/MariaDB-only until that is fixed.
- The `/simplenews-c/{tag}` redirect is **allowlisted**, not open: `hitClick()` calls
  `SimplenewsStatsAllowedLinks::isLinkExist($entity, $link)` against a per-entity table of links
  harvested from the newsletter, uses `TrustedRedirectResponse` when it matches, and otherwise
  redirects to the entity's own URL. Verified in source — it is not an open redirect.

**Privacy:** open/click tracking records recipient behaviour and is personal-data processing
under GDPR. A site enabling it needs a lawful basis and a privacy notice that covers it; do not
present this module as a purely technical change.
