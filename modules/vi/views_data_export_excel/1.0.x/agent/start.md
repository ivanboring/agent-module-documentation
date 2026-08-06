<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Views Data Export Excel (views_data_export_excel) — agent index

Adds **Excel** output to **Views Data Export**. Version **1.0.2**. Core `^10.3 || ^11`.
Depends on `views_data_export`.

Why not CSV: CSV loses number formatting, mangles leading zeros and turns anything date-shaped into
a date. A real spreadsheet format keeps types.

**Three points to raise:** spreadsheet generation is **memory-hungry** (batch large exports); an
exported file **leaves the site's access controls behind** — a View correctly scoped to one user
produces a file forwardable to anyone; and **formula injection** — a cell starting `=`, `+`, `-` or
`@` is executed by Excel, so check whether the export escapes those.