<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Taxonomy Import loads taxonomy terms from a CSV file, including hierarchy, so a vocabulary of a few hundred terms arrives in one upload rather than one form submission at a time.

---

Vocabularies routinely arrive as a spreadsheet — a product classification from a supplier, a subject taxonomy from a standards body, a location list from someone's export. Typing them in is not a reasonable use of anyone's afternoon, and reaching for Migrate to load a flat list is a lot of apparatus for a one-off. This module sits in the gap: upload a CSV at `/admin/config/content/taxonomy/csv_import`, get terms. Hierarchy is supported, and downloadable example files show the expected shape for both flat and nested input. Version **8.x-1.3** on core `^10.2 || ^11`. Access is `administer taxonomy` **or** the dedicated `import taxonomy csv` permission, which is the useful part of the design — a data-entry person can be allowed to load vocabularies without being handed the ability to restructure the site's taxonomy. Two operational points. **Re-running an import** needs testing before you rely on it: whether a second run updates matching terms or creates duplicates changes how you handle a corrected spreadsheet, and it is much easier to check on a copy than to clean up afterwards. And CSV from a spreadsheet carries the usual hazards — encoding, a stray BOM, quoted fields containing the delimiter — so a failed import is more often the file than the module.

---

- Import a vocabulary from a spreadsheet.
- Load a supplier's product classification.
- Import terms with hierarchy.
- Populate a taxonomy at launch.
- Load a subject classification.
- Import a list of locations.
- Avoid entering hundreds of terms by hand.
- Let a data-entry role load vocabularies.
- Import a standards body's taxonomy.
- Rebuild a vocabulary from a source file.
- Load a category tree.
- Import terms during a site build.
- Avoid writing a migration for a one-off.
- Load a translated term list.
- Import a departmental structure.
- Refresh a vocabulary from an export.
- Check the expected CSV shape.
- Load nested categories in one pass.
