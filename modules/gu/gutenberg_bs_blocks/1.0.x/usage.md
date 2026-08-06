<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Gutenberg Bootstrap Blocks adds container, row and column blocks to the Gutenberg editor, so editors can build Bootstrap grids inside content.

---

Gutenberg gives Drupal a block-based editing experience, and its default blocks cover content well and layout barely. On a Bootstrap site that is a gap editors notice immediately: they can write a paragraph but not put two of them side by side.

This module adds the grid primitives — container, row, column — as Gutenberg blocks emitting Bootstrap's markup, so an editor composes a grid in the editor and gets the theme's existing responsive behaviour without writing classes.

Two things worth being deliberate about. **Layout in content is a design decision handed to editors**, and the usual consequence is pages that drift from the design system. A component-based approach (a card grid block that produces the right layout) constrains more than raw containers and rows do; offering both is how a site ends up with three ways to make two columns. Decide which one editors should reach for.

And **responsive behaviour is Bootstrap's, not the editor's** — a two-column row stacks on mobile because Bootstrap says so, which is usually what you want and occasionally not. Editors composing grids should be shown what their layout does at mobile width, because the editor's canvas is a desktop.

The release is **1.0.0-rc3**, a release candidate.

---

- Put two paragraphs side by side in Gutenberg.
- Build a Bootstrap grid inside content.
- Add a container block to the editor.
- Compose rows and columns visually.
- Reuse the theme's responsive behaviour.
- Avoid writing Bootstrap classes by hand.
- Decide between raw grids and components.
- Avoid three ways to make two columns.
- Show editors what a layout does on mobile.
- Check stacking behaviour at small widths.
- Constrain layout choices to the design system.
- Evaluate a release candidate.
- Train editors on grid blocks.
- Audit content using raw grid markup.
- Document the grid-versus-component rule for editors.
