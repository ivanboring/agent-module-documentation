<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Entity Reports documents a site's own content model: for every fieldable entity type it lists the bundles, their fields, types and settings, and can export the whole picture as JSON, XML or CSV.

---

Asking "what does this site's data model actually look like?" normally means clicking through Field UI bundle by bundle, or writing a throwaway script. This module answers it in one place. `src/ReportGenerator.php` walks the entity type definitions and produces the report; `src/Routing/EntityReportsRoutes.php` generates the routes dynamically — one page per fieldable entity type at `/admin/reports/entity/{entity_type}`, plus one export route per entity type per format, plus site-wide statistics exports. Export formats are themselves extensible: `src/Event/EntityReportsExportFormats` is dispatched so other modules can register a format, and the **entity_reports_csv** submodule is the worked example of doing so. A settings form at `/admin/config/development/entity-reports` limits which entity types are reported. Two permissions are declared, `view entity reports` and `administer entity reports`; every generated route requires the former. Worth noting for an access review: neither permission carries `restrict access: true`, and the reports enumerate every bundle and field on the site — which is exactly the reconnaissance an attacker would want — so treat `view entity reports` as more sensitive than its name suggests.

---

- Document a site's content model in one place.
- Export the field structure as CSV for a spreadsheet.
- Hand a data model to a new developer.
- Audit which bundles use a given field.
- Produce documentation for a client handover.
- Compare the model between two environments.
- Feed a migration plan with real field data.
- Find unused fields before a cleanup.
- Report on media and paragraph structures too.
- Limit reporting to selected entity types.
- Export as JSON for further processing.
- Register a custom export format via an event.
- Support an information-architecture review.
- Check field settings without opening Field UI.
- Generate statistics about entity usage.
- Provide evidence for an accessibility or data audit.
- Track model growth over time.
- Share the structure with a non-Drupal team.
