<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# UI Patterns Field Group (ui_patterns_field_group) — agent index

Bridge letting a **field group** be rendered by a **UI Patterns** component. Depends on
`field_group` and **`ui_patterns (>=2)`**. Core requirement `^9 || ^10 || ^11`.
**Release is 2.0.0-beta1 — beta.**

Key facts:
- **UI Patterns 2.x specifically.** The `>=2` dependency is not incidental: 2.x is a substantially
  different architecture from 1.x, aligned with Drupal's **Single Directory Components**. A site
  on UI Patterns 1.x needs a different release of this bridge.
- Whole module: `src/Plugin/` (the field group formatter) and `src/Utility/`. No routes,
  permissions or configuration.
- Configured per field group in **Manage Display**, so the pattern choice and the field-to-slot
  mapping export with the view display.
- Same shape as `ui_styles_paragraphs` (wave 60): a small connector between a design-system module
  and an editorial-structure module. Neither contributes components or styles of its own — if the
  pattern list is empty, the theme or a component module has declared none.
