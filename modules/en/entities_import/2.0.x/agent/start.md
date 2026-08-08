<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Entities Import — agent index

UI to **import entity data from Excel/CSV** — map columns to fields, bulk create/update entities.
Config via `entity.entities_import_type.collection`; provides permissions. Version **2.0.0**. Core
`>=8`.

**Security:** restrict the import permission (acts with importer's privileges); imported spreadsheet
data is untrusted input becoming content — validate it; mind mappings that overwrite entities.
