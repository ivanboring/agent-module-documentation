<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Grouped by field widget (group_by_field_widget) — agent index

Reference-field widget that groups checkboxes **under their parents** (vocabulary or parent term).
Core-only dependencies. Core requirement `~9.0 || ^10.0 || ^11`.

Key facts:
- **Widget substitution only** — field type and stored values are untouched; chosen per form
  display and free to switch back.
- Surface: `src/Plugin/Field/FieldWidget/`, `config/schema`. No routes, permissions or config
  pages.
- Solves the flat-list problem: a field referencing several vocabularies, or a hierarchical one,
  renders in core as one undifferentiated column of checkboxes with nothing showing which options
  belong together.
- Tidiness note: the release carries **two schema files** (`config/schema/` plus a stray top-level
  `group_by_field_widget.schema.yml`) and two licence files. Harmless, but worth knowing if a
  schema change appears not to take effect — check which file is being read.
- Related widgets documented in this campaign: `many_selects` (wave 58) for `<select multiple>`,
  `choices_autocomplete` (wave 64) for entity reference autocompletes.
