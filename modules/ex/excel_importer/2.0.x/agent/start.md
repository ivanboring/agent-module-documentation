<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Excel Importer (excel_importer) — agent index

Creates nodes from an uploaded spreadsheet using **`phpoffice/phpspreadsheet ^3`**.
PHP `^8.1`. Core requirement `^9.5 || ^10 || ^11`.

| Route | Path | Permission (both `restrict access: true`) |
|---|---|---|
| `excel_importer.import_form` | `/excel-import` | `use excel_importer` |
| `excel_importer.admin_settings` | `/admin/config/content/excel_importer` | `administer excel_importer` |

Key facts:
- **Both permissions are restricted, and both restrictions are earned:**
  - importing creates content in bulk, bypassing normal authoring review;
  - the upload is fed to **PhpSpreadsheet**, a large parser for a complex format with a history
    of security advisories. (This campaign hit one directly: a phpspreadsheet advisory is what
    blocked `oidc` from installing in wave 59.) Keep the dependency current and keep the
    permission narrow — it decides who may hand arbitrary files to that parser.
- Note the import form sits at the **front-end path `/excel-import`**, not under `/admin`. It is
  still permission-gated, but it is not an admin route, so it will not inherit admin-theme or
  admin-route behaviour.
- Choose Migrate instead when the import is repeatable, needs rollback, or must run in CI. This
  module is for the one-off spreadsheet handover.
