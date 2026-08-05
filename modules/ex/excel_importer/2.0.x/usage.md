<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Excel Importer creates nodes from an uploaded spreadsheet — the direct route from a client's XLSX file to Drupal content, without building a migration.

---

Migrate is the right tool for a repeatable, versioned import; it is disproportionate when someone hands over a spreadsheet once and wants it turned into two hundred nodes. This module covers that case: an import form at `/excel-import`, a settings form at `/admin/config/content/excel_importer` mapping columns to fields, and `phpoffice/phpspreadsheet ^3` doing the parsing. Both permissions — `use excel_importer` and `administer excel_importer` — are marked **`restrict access: true`**, which is right for two reasons. The obvious one is that importing creates content in bulk, bypassing the pace and review that normal authoring implies. The less obvious one is the parser: PhpSpreadsheet handles a large, complex file format, and spreadsheet parsing libraries have a history of security advisories — a fact this campaign has met before, since a phpspreadsheet advisory is what blocked another module from installing in wave 59. Keeping the dependency current matters, and so does restricting who may feed files to it. Requirements are PHP 8.1+ and core `^9.5 || ^10 || ^11`.

---

- Create nodes from a client's spreadsheet.
- Import a product list into Drupal.
- Turn an XLSX export into content.
- Map spreadsheet columns to node fields.
- Load reference content at launch.
- Avoid building a migration for a one-off import.
- Import a staff directory.
- Bulk create event listings.
- Let a content team self-serve an import.
- Import data exported from another CMS.
- Load a catalogue from a supplier file.
- Restrict importing to a trusted role.
- Create content from a survey export.
- Import a list of locations.
- Populate a site before launch.
- Convert a maintained spreadsheet into pages.
- Reduce manual data entry.
- Import updates to existing content.
