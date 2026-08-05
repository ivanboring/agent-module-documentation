<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Component blocks (component_blocks) — agent index

Turns **UI Patterns** components into Layout Builder blocks whose slots are filled from the host
entity's **fields**. Depends on core `block`, `layout_builder` and `ui_patterns`.
Core requirement `^9.0 || ^10.0 || ^11`.

Key facts:
- **Composer pins `drupal/ui_patterns ^1.0` — UI Patterns 1.x.** That is decisive: 2.x is a
  substantially different architecture aligned with **Single Directory Components**. On a UI
  Patterns 2 site this bridge does not apply; `ui_patterns_field_group` (wave 62) is the 2.x-era
  equivalent for field groups.
- The distinguishing feature is **slots filled from fields**, not from typed-in values — so
  content stays on the entity and the component stays in the theme.
- Surface: `src/Plugin/` (block derivatives), `templates/field--component-block.html.twig`,
  `config/schema`. No routes or permissions.
- `test_dependencies` names `components`, `ui_patterns_library`, `ui_patterns_settings` — the
  ecosystem it was built against, useful for judging fit.
