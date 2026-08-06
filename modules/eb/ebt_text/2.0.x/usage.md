<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
EBT Text adds a ready-made Text block type with the Extra Block Types family's shared presentation settings — spacing, background, container width.

---

The plain text block is the component every site needs most and configures worst. Core's basic block gives a body field and nothing else, so the moment a design calls for that text on a coloured background, with padding above it, constrained to a narrower column, the answers are a CSS class typed into a field, a custom block type built per project, or a template override — and each of those is invented again on the next site. Attaching the shared `ebt_core` settings to a text block turns the common presentation decisions into a form. That the simplest component in the family is the one worth having is not a criticism: a text block is placed more often than every other component combined. Version **2.0.0** requiring `ebt_core`, core requirement `^10.1 || ^11 || ^12`. Two things to weigh, and they are the family's standing trade. **Pre-built is quick to adopt and awkward to diverge from** — the markup and settings are the module's, so a design the options do not cover means overriding templates, at which point a locally defined block type is often cheaper. And **it becomes a dependency of the content**: pages are built from it, so removing the module later leaves blocks with no type. Worth remembering too that **EBT is the block-shaped family and EPT the paragraph-shaped one**, and the distinction decides where the component can go: a block is placeable in a region, droppable into a Layout Builder section and referenceable from a field, while a paragraph belongs to one page's field.

---

- Add a styled text block to a region.
- Place text on a coloured background.
- Add padding around a text block.
- Constrain text to a narrow column.
- Add a text block to a Layout Builder section.
- Give editors consistent text styling.
- Reuse a styled text block across pages.
- Add an introduction block.
- Place a notice with background styling.
- Build a page section from text.
- Add a callout block.
- Give a footer a styled text area.
- Add a text block with spacing options.
- Standardise text presentation.
- Build a simple content section.
- Add a quote block with styling.
- Place explanatory text in a sidebar.
- Add a text block without custom code.
