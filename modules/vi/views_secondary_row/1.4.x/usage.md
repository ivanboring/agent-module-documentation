<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Views Secondary Row provides a table style where some fields drop onto a **second row** beneath the main one, so a table with too many columns stays readable instead of scrolling sideways.

---

Views' table style puts every field in a column, and a listing with a dozen fields — title, author, date, status, category, several counts — produces a table wider than any screen. The usual responses are removing fields (losing information), a horizontal scroll (poor on every device) or a custom template per view. This style takes the newspaper approach instead: the important fields stay on the primary row and the rest are grouped onto a secondary row that spans the table's width, which keeps everything visible and readable at narrow widths. Two Twig templates ship for the two levels (`views-secondary-row-style-plugin-table.html.twig` and `views-secondary-row-view-table.html.twig`) with `views_secondary_row.theme.inc` supporting them, and `src/Plugin` supplies the style. It depends on core `views` alone and spans `^8 || ^9 || ^10 || ^11`. One thing worth checking when adopting it: a secondary row changes the table's semantics, so verify how it reads with a screen reader — a data table's row/column relationships are what assistive technology uses to make sense of it.

---

- Keep a wide table readable.
- Move secondary fields to a second row.
- Avoid horizontal scrolling on a listing.
- Show a description under a table row.
- Improve a report table on mobile.
- Keep all fields visible without squeezing.
- Show metadata beneath the main row.
- Build an admin listing with many fields.
- Show an excerpt under a title row.
- Improve readability of a data table.
- Group less important columns together.
- Avoid dropping fields from a table.
- Theme the secondary row separately.
- Show tags beneath a content row.
- Build a search results table.
- Improve a product comparison table.
- Reduce table width on tablets.
- Support a site still on Drupal 8.
