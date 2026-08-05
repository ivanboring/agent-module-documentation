<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Component blocks turns a theme's UI Patterns components into placeable blocks whose slots are filled from the host entity's **fields**, so a component can be dropped into Layout Builder and wired to real content rather than to typed-in values.

---

UI Patterns declares components with named slots; Layout Builder places blocks. Bridging them usually means either a custom block per component or an inline block where an editor retypes content that already exists on the entity. This module supplies the third option: a block plugin derived from each component whose slots map to the entity's fields, with `templates/field--component-block.html.twig` handling field rendering inside the component. Dependencies are core `block` and `layout_builder` plus `ui_patterns`, and the composer constraint pins **`drupal/ui_patterns ^1.0`** — UI Patterns 1.x, which matters because 2.x is a substantially different architecture aligned with Single Directory Components. A site on UI Patterns 2 needs a different bridge; `ui_patterns_field_group` (wave 62) is the 2.x-era equivalent for field groups. The `test_dependencies` line names `components`, `ui_patterns_library` and `ui_patterns_settings`, which indicates the ecosystem it was built against. Core requirement is `^9.0 || ^10.0 || ^11`.

---

- Place a design-system component in Layout Builder.
- Fill a component's slots from entity fields.
- Avoid retyping content into an inline block.
- Reuse theme components as blocks.
- Keep component markup in the theme.
- Build a page from real content and components.
- Map a field to a component slot.
- Give site builders access to the component library.
- Avoid a custom block per component.
- Render a card component from node fields.
- Keep content and presentation separate.
- Support a component-driven build.
- Configure slot mapping per block.
- Reuse a component across content types.
- Build a landing page from components.
- Reduce bespoke block plugins.
- Wire a hero component to a node's fields.
- Support a UI Patterns 1.x design system.
