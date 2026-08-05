<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Views Secondary Row (views_secondary_row) — agent index

Views **table style** that moves selected fields onto a secondary row spanning the table width.
Depends on core `views`. Core requirement `^8 || ^9 || ^10 || ^11`.

Key facts:
- Surface: `src/Plugin/views/style/`, `views_secondary_row.theme.inc`, and two templates —
  `views-secondary-row-style-plugin-table.html.twig` and
  `views-secondary-row-view-table.html.twig`. No routes, permissions or config pages.
- **Check screen-reader behaviour.** A secondary row changes the table's semantics, and a data
  table's row/column relationships are what assistive technology uses to interpret it. Verify the
  markup (header associations, `colspan`) rather than assuming.
- Chosen as the display **format** in the Views UI; reversible with one setting.
- `.info.yml` reports the legacy `version: '8.x-1.4'`.
