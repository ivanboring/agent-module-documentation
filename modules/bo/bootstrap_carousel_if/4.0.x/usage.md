<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Bootstrap Carousel Image Formatter renders a multi-value image field as a Bootstrap carousel.

---

A multi-value image field on a product, a property listing or a gallery node is a set of images that a design usually wants as a carousel. Doing that as a field formatter is the right layer — it is a display decision, so it belongs in Manage display, per view mode, rather than in a template.

Choosing the Bootstrap carousel specifically means the markup and behaviour come from a framework the theme probably already loads, so there is no additional library and the styling follows the site's Bootstrap variables.

Two things to check before using it. **The theme must actually provide Bootstrap's carousel JavaScript** — the formatter emits the markup, and if the theme ships only Bootstrap's CSS the carousel will look right and not move. And the usual carousel caveats apply: keyboard operation, visible focus on the controls, a pause control if it auto-advances, and the general point that images past the first are seen by few visitors.

For a product gallery, where the images are alternatives rather than a sequence to be read, that last objection is much weaker than it is for content — which is the case this formatter fits best.

---

- Show a multi-value image field as a carousel.
- Present product photos as alternatives.
- Build a property listing gallery.
- Choose the carousel per view mode.
- Reuse the theme's Bootstrap library.
- Avoid adding a separate slider library.
- Confirm the theme ships Bootstrap's JS.
- Diagnose a carousel that does not move.
- Check keyboard operation of the carousel.
- Provide a pause control for auto-advance.
- Show a thumbnail in teaser and carousel in full.
- Style the carousel with Bootstrap variables.
- Order images in the field.
- Audit carousels for accessibility.
- Document the theme's Bootstrap JS requirement.
