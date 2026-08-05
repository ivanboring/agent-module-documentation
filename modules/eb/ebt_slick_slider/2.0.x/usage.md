<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
EBT Slick Slider ships a Slick-based slider block type for the Extra Block Types family — the sixth carousel in this campaign, and the one to reach for on a site already using Slick.

---

The family pattern is by now familiar: components as **block types** rather than paragraph types, so they can be placed in regions and in Layout Builder, with `ebt_core` supplying the settings they share — background, spacing, container width. This one contributes a slider built on Slick, which is the long-established jQuery carousel library and still widely deployed, particularly on sites built a few years ago whose theme already loads it. That is the deciding factor: if Slick is already present, this reuses it; if not, `ebt_slideshow` (wave 60, FlexSlider) or `slider_collection` (wave 66, Swiper or Tiny Slider) avoid adding a jQuery dependency to a site that has otherwise moved past it. Composer requires `ebt_core ^2.0` and `paragraphs ^1.0`, and `core_version_requirement` is `^10.1 || ^11 || ^12`, covering Drupal 12. The accessibility caveat that applies to every carousel applies here: auto-advance must be pausable, and controls need accessible names and keyboard operation — Slick's record on this is mixed and worth testing rather than assuming.

---

- Add a Slick slider as a block.
- Reuse a theme's existing Slick library.
- Place a carousel in Layout Builder.
- Build a testimonial slider.
- Show partner logos rotating.
- Share styling settings with other EBT blocks.
- Add a hero slider to a homepage.
- Reuse one slider across pages.
- Show a product image carousel.
- Configure slides in the block form.
- Theme the slider with a template.
- Add a slider without a developer.
- Support a Slick-based theme.
- Show a news carousel.
- Place a slider in a sidebar.
- Export the configured slider with site config.
- Prepare a slider component for Drupal 12.
- Adopt one EBT component alone.
