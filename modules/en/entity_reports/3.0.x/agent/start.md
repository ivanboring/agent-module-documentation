<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Entity Reports (entity_reports) — agent index

Reports the site's entity/bundle/field structure, with JSON, XML and CSV export. Depends on
core `field`, `node`, `taxonomy`. Core requirement `^10.1 || ^11`.
Settings at `/admin/config/development/entity-reports`. Submodule: `entity_reports_csv`.

Key facts:
- **Routes are generated, not declared.** `entity_reports.routing.yml` has a
  `route_callbacks:` entry pointing at `EntityReportsRoutes::getRoutes()`, which emits, for
  every entity type implementing `FieldableEntityInterface` (filtered by the
  `reported_entity_types` setting):
  - `admin/reports/entity/{entity_type_id}` — the report page
  - `admin/reports/entity/{entity_type_id}.{format}` — one per export format
  - `admin/reports/entity_statistics.{format}` — site-wide statistics

  All of them require **`view entity reports`**. Grepping `routing.yml` alone will not show
  them; read `src/Routing/EntityReportsRoutes.php`.
- Export formats are extensible through the **`EntityReportsExportFormats` event**
  (`src/Event/`); `entity_reports_csv` is the reference implementation.
- **Access note:** neither `view entity reports` nor `administer entity reports` is marked
  `restrict access: true`, yet the reports enumerate every bundle, field, field type and
  setting on the site — useful reconnaissance. Treat `view entity reports` as an
  information-disclosure permission and grant it narrowly.
- `src/ReportGenerator.php` is the single place to look when a report's contents are wrong.
