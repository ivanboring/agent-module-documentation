<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# XLS Views Data Export (xls_views_data_export) — agent index

Spreadsheet-oriented extension of **Views Data Export**, able to write results into an existing
template workbook. Depends on `views_data_export` and `xls_serialization`. No permissions of its
own, no Drush; config schema shipped.

> **Undeclared composer dependencies.** `info.yml` carries a `@TODO: should add these
> dependencies to the composer.json` — `views_data_export` and `xls_serialization` are Drupal
> dependencies only, so `composer require drupal/xls_views_data_export` alone will not pull them.
> Require them explicitly.

Key facts:
- Display plugin `Plugin\views\display\XlsDataExport extends
  Drupal\views_data_export\Plugin\views\display\DataExport`, with
  `const DISPLAY_PLUGIN = 'data_export'`. It uses PhpSpreadsheet directly
  (`IOFactory`, `Spreadsheet`, `Worksheet`), which is how results are written into an existing
  workbook rather than a fresh grid.
- **`collectRoutes(RouteCollection $collection)`** is overridden:
  - an export route is only created when the display's *Allow export* option is TRUE
    (`if ($route = $collection->get("view.$view_id.$display_id"))`);
  - contextual-filter path segments are rewritten to named `{arg_N}` parameters and recorded in an
    argument map, so exports work for views with arguments.
- Options form: `buildOptionsForm()`, `validateOptionsForm()`, `submitOptionsForm()` add the
  template/spreadsheet settings in the Views UI.
- `Form\XlsExportForm` triggers an export; `EventSubscriber\ExportRedirectSubscriber` handles the
  redirect afterwards; `xls_views_data_export.services.yml` registers them.

```bash
composer require drupal/xls_views_data_export drupal/views_data_export drupal/xls_serialization
drush en xls_views_data_export -y
# Then add a "Data export" display to a view and choose the XLS options.
```

Note the module description mentions writing "to an existing PDF" — the code is spreadsheet-based
(PhpSpreadsheet); read that as an existing **workbook**.
