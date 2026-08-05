<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
XLS Views Data Export extends the Views Data Export module with a spreadsheet-oriented display: exports can be written into an **existing template workbook** rather than a blank sheet, with export routes and a form for triggering them.

---

Views Data Export gives Views a `data_export` display that streams CSV/XML/JSON; `xls_serialization` adds XLS/XLSX encoders. This module builds on both with an `XlsDataExport` display plugin that subclasses `DataExport` (constant `DISPLAY_PLUGIN = 'data_export'`) and layers spreadsheet-specific behaviour on top, using PhpSpreadsheet's `IOFactory`, `Spreadsheet` and `Worksheet` classes directly. The headline feature is writing results into an existing file — a branded template with headers, formatting and formulas already in place — instead of generating a bare grid. `collectRoutes()` overrides route generation so an export route is only created when the display's *Allow export* option is on, and it rewrites contextual-filter path segments into named `{arg_N}` parameters so exports work on views with arguments. `buildOptionsForm()` / `validateOptionsForm()` / `submitOptionsForm()` expose the extra settings in the Views UI, an `XlsExportForm` provides the front-end trigger, and an `ExportRedirectSubscriber` handles the post-export redirect. Note the module's own `info.yml` carries a `@TODO` admitting its `views_data_export` and `xls_serialization` dependencies are not declared in composer.json — install them explicitly.

---

- Export a view into a branded spreadsheet template.
- Preserve formatting and formulas in an exported workbook.
- Provide XLSX downloads from a Views listing.
- Export a filtered report for finance or management.
- Generate exports from views that use contextual filters.
- Offer an export button only where it is enabled.
- Trigger an export from a dedicated form.
- Redirect the user sensibly after an export completes.
- Produce recurring reports with a consistent layout.
- Avoid post-processing exported CSV in a spreadsheet app.
- Keep column headers and styling defined by a designer.
- Export data into a specific worksheet of a workbook.
- Support large exports through Views Data Export's batching.
- Give editors a one-click report download.
- Standardise report appearance across a site.
- Combine Views filters with a fixed report template.
- Export member or order listings for external systems.
- Reuse an existing template across several views.
- Provide XLSX alongside CSV from the same view.
- Reduce manual work assembling monthly reports.
