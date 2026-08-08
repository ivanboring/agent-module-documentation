<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Entities Import provides a user interface to import data from Excel or CSV files into Drupal entities.

---

Entities Import provides a UI-driven way to import data from Excel or CSV files into Drupal
entities — administrators define import types (mapping spreadsheet columns to entity fields) and upload
files to create/update entities in bulk, without writing a migration. It is configured via the
`entities_import_type` collection and provides its own permissions.

Use it for straightforward bulk content/data imports maintained in spreadsheets (catalogues,
directories, batch content). Because importing creates or updates entities, restrict the import
permission to trusted users, validate/sanitise imported data (spreadsheet content is untrusted input
that becomes site content), and be careful with mappings that could overwrite existing entities. It is
an import/administration feature; it acts with the importer's privileges, so treat it as a privileged
operation.

---

- Import entity data from Excel/CSV.
- Provide a UI for spreadsheet import.
- Map columns to entity fields.
- Create or update entities in bulk.
- Define import types.
- Avoid writing a migration.
- Configure via the import-type collection.
- Provide its own permissions.
- Restrict import to trusted users.
- Validate imported spreadsheet data.
- Treat imported data as untrusted input.
- Be careful overwriting entities.
- Bulk-import catalogues/directories.
- Import batch content.
- Act with the importer's privileges.
- Upload files to import.
- Map spreadsheet to fields.
- Handle CSV and Excel.
- Import content from spreadsheets.
- Treat import as privileged.
