<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# PhpSpreadsheet

A thin dependency wrapper. It has no routes, forms, services, schema or hooks of its own; its only job is to declare a Composer dependency on `phpoffice/phpspreadsheet` (~1) so that the classes under the `PhpOffice\PhpSpreadsheet` namespace autoload on the site. Other contrib/custom modules that need to generate or parse Excel/ODS/CSV files depend on it.

---

# Installing & configuring

- Require with Composer (`composer require drupal/phpspreadsheet`) which pulls in `phpoffice/phpspreadsheet`.
- Enable the module (`drush en phpspreadsheet`); there is nothing to configure.
- No admin UI, no permissions, no config entities.
- Depend on it from another module's `.info.yml` and use the library classes directly.

---

- Provides the `PhpOffice\PhpSpreadsheet` classes to the Drupal autoloader.
- Used as a dependency by modules that export data to `.xlsx`/`.xls`.
- Used by modules that import/parse uploaded spreadsheets.
- Enables building `Spreadsheet` objects and writing them with `Xlsx`/`Csv` writers.
- Enables reading spreadsheets with `IOFactory::load()`.
- No routing, controllers or forms of its own.
- No permissions defined.
- No configuration schema or settings form.
- Contains only an `.info.yml` and `composer.json` — pure library glue.
- Core requirement is broad (`^8 || ^9 || ^10`).
- Version 2.1.0 of the module maps to library major `~1`.
- Security posture depends entirely on how consuming code uses the library (CSV/formula injection, XXE on load) — this module adds no attack surface itself.
- Consuming modules should sanitise cell values (guard leading `=`,`+`,`-`,`@`) to avoid CSV/formula injection when exporting.
- Consuming modules should validate/limit uploaded files before `IOFactory::load()`.
- Keep the library patched by updating the Composer constraint.
- Uninstalling is safe once no dependent module needs the library.
