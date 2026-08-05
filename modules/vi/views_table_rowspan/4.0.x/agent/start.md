<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Views Table Rowspan (views_table_rowspan) — agent index

Views display format merging repeated cells with **`rowspan`**. Depends on core `views`.
Core requirement `^10 || ^11`.

Key facts:
- **Rows must be sorted by the merged column.** `rowspan` merges *adjacent* rows only — an
  unsorted view produces scattered single-row merges that look broken. This is the first thing to
  check when output is wrong.
- **Test with assistive technology.** Merged cells change how a screen reader associates data with
  headers. Where the merged column carries meaning rather than decoration, verify the table still
  reads correctly rather than assuming.
- Chosen as the display **format**, so everything else about the view is unchanged and the choice
  is reversible with one setting.
- Compare `views_secondary_row` (wave 66), which solves the adjacent problem — too many columns
  rather than too much repetition.
