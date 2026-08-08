<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Viewer (viewer) — agent index

Displays **CSV/XLSX/other files as inline tables/previews**. Version **1.0.5**.

**Security:** it **parses and renders file contents** — display only trusted/access-controlled files
(parsers have had CVEs; spreadsheet cells can carry markup). Confirm cell content is escaped on
render.