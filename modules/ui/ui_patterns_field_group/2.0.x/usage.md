<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
UI Patterns Field Group lets a **field group** be rendered by a UI Patterns component, so a group of fields is output through a design-system pattern rather than a generic fieldset or div.

---

Field Group solves arrangement — these five fields belong together — and then renders the grouping with one of its own generic formatters. UI Patterns solves componentisation: a pattern declares named slots and props, and something supplies them. This module joins the two: a field group's format becomes "render as pattern X", with the group's fields mapped onto the pattern's slots. The result is that Manage Display becomes the place where content meets the component library, without a preprocess function per grouping. The module is small — `src/Plugin` for the field group formatter and `src/Utility` for helpers — and the dependency line matters: `ui_patterns (>=2)`, i.e. UI Patterns **2.x**, which is a substantially different architecture from 1.x and aligns with Drupal's Single Directory Components. A site on UI Patterns 1.x needs a different release. The version is **2.0.0-beta1**, a beta, and the core range is `^9 || ^10 || ^11`. It pairs conceptually with `ui_styles_paragraphs` (wave 60): both are bridges that connect a component/design-system module to an editorial structure module.

---

- Render a field group through a design-system component.
- Map grouped fields onto a pattern's slots.
- Avoid a preprocess function per grouping.
- Reuse SDC components in Manage Display.
- Keep field arrangement and component choice together.
- Build a card from grouped fields.
- Apply a pattern to a set of related fields.
- Standardise component usage across bundles.
- Give site builders access to the component library.
- Render an address group through an address pattern.
- Reduce bespoke theming for common groupings.
- Keep display configuration exportable.
- Support a component-driven front end.
- Map fields to a media object pattern.
- Change a component without touching templates.
- Align Drupal display with SDC.
- Reuse patterns across entity types.
- Prototype component usage from the UI.
