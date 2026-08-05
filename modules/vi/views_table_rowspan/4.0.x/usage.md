<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Views Table Rowspan merges repeated cells in a table column using `rowspan`, so a listing grouped by category shows the category once against its group instead of repeating it on every row.

---

Repetition in a table column is the visual signature of grouped data rendered flat: twelve rows in a report all saying "North region" in the first column, when the useful presentation is one merged cell spanning those twelve. Views can group results into separate tables with headings, which is a different look and often not the one a report wants; `rowspan` keeps one table and one set of column headers while showing the grouping structurally. This module supplies it as a Views display format, so it is chosen in place of the standard table style and everything else about the view is unchanged. It depends on core `views` with `config/schema` for its settings, on core `^10 || ^11`. Two things to check. Sorting matters: rows must be **ordered by the merged column** for merging to make sense, since `rowspan` can only merge adjacent rows — an unsorted view produces scattered single-row merges. And accessibility: merged cells change how a screen reader associates data with headers, so a table using `rowspan` should be tested with assistive technology rather than assumed correct, particularly if the merged column carries meaning rather than decoration.

---

- Merge repeated cells in a report column.
- Show a category once per group.
- Present grouped data in one table.
- Avoid repeating a value on every row.
- Improve readability of a data table.
- Keep one set of column headers.
- Show a hierarchy inside a table.
- Present a schedule by day.
- Merge cells in a financial report.
- Group rows without separate tables.
- Improve a timetable's layout.
- Show a person's multiple roles compactly.
- Present survey results by section.
- Reduce visual noise in a report.
- Build a comparison table.
- Merge cells in an admin listing.
- Present a matrix of results.
- Improve a printed report's layout.
