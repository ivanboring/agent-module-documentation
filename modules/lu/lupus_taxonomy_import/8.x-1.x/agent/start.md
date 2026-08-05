<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Taxonomy Import (lupus_taxonomy_import) — agent index

CSV import of taxonomy terms, hierarchy included. Form at
`/admin/config/content/taxonomy/csv_import`. Version **8.x-1.3**.
Core requirement `^10.2 || ^11`.

Access: `administer taxonomy` **or** the dedicated **`import taxonomy csv`** permission — the
useful part of the design, since a data-entry role can load vocabularies without gaining the
ability to restructure the site's taxonomy.

Key facts:
- **Test re-running an import before relying on it.** Whether a second run updates matching terms
  or creates duplicates determines how a corrected spreadsheet is handled — much cheaper to check
  on a copy than to clean up after.
- Downloadable **example CSVs** (flat and hierarchical) are served from
  `/admin/config/content/taxonomy/csv_import/example/{type}`.
- CSV from a spreadsheet brings the usual failure modes — encoding, a stray BOM, quoted fields
  containing the delimiter. A failed import is more often the file than the module.

**Checked and clear:** the example route is `_access: 'TRUE'` (anonymous) and `getExampleCsv()`
concatenates `{type}` into `__DIR__ . '/examples/' . $type . '.csv'` with no sanitisation. Not
exploitable — a route parameter cannot contain `/`, encoded-slash requests do not match the route
(verified: 404), and the hard-coded `.csv` suffix plus PHP 8's rejection of null bytes in paths
closes the remaining angles. Worth re-checking if the route or parameter type ever changes.
