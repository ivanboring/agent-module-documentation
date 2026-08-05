<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Many Selects (many_selects) — agent index

Field widget replacing `<select multiple>` with a series of single selects. Depends on core
`options`. PHP >= 8.1. Core requirement `^10.2 || ^11`.

Key facts:
- **Widget only — no data model change.** It is chosen per form display; the field type and
  stored values are untouched, so switching to or from it is reversible with no migration.
- No routes, no permissions, no config forms. Surface is `src/Plugin/` (the widget),
  `src/Hook/`, `many_selects.module` and `many_selects.services.yml`.
- Positioned between core's two options: native multi-select (compact, hostile) and checkboxes
  (usable, unmanageable past a few dozen values). Reach for this when the list is long *and*
  the multi-select is causing errors.
- Ships a `.tugboat/` config, so upstream runs a live demo environment for the project.
