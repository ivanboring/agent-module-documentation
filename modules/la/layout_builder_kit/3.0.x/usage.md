<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Layout Builder Kit adds a set of components — blocks, layouts and settings — for building pages with core's Layout Builder.

---

Layout Builder is core's page-building system and it ships deliberately bare: sections, blocks and the mechanism to arrange them, with almost nothing to arrange. Every project then builds the same starting set — a section with a background, a spacer, a container that constrains width, a block that renders a field with some presentation options — before it can build anything specific. This module supplies that starting set, so the first week of a Layout Builder project is spent on the design rather than on the primitives. Version **3.0.0-beta2** — a beta — on core `^10 || ^11`, depending on `layout_builder` and on **`hook_event_dispatcher`**, which is worth noticing: it is a substantial module that re-expresses Drupal's hooks as Symfony events, so adopting this brings an architectural dependency along with the components. The permission `access layout builder kit components` is `restrict access: true` and governs the settings form. Two things to weigh, the same trade recorded for the EPT paragraph family: **pre-built components are quick to adopt and awkward to diverge from**, since the markup and settings are the module's, so a design the options do not cover means overriding templates and at that point locally defined components may be cheaper. And **components become a dependency of the content** — pages are built from them, so removing the module later leaves sections referring to blocks that no longer exist.

---

- Add ready-made Layout Builder components.
- Start a Layout Builder project faster.
- Add a section background option.
- Constrain a section's width.
- Add spacing controls to layouts.
- Provide editors with common blocks.
- Avoid rebuilding standard primitives.
- Add a container layout.
- Give sections presentation options.
- Support a design system in Layout Builder.
- Build a landing page from components.
- Standardise layouts across a site.
- Provide a starting component library.
- Reduce custom layout plugin code.
- Add configurable block wrappers.
- Support a marketing page builder.
- Give a team consistent building blocks.
- Prototype a page structure quickly.
