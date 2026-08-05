<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Extra Block Types (EBT): Slick Slider (ebt_slick_slider) — agent index

Slick-based slider **block type** for the **Extra Block Types** family. Depends on `ebt_core ^2.0`
and `paragraphs ^1.0`. Core requirement `^10.1 || ^11 || ^12` (declares Drupal 12).

Key facts:
- **Choose it when Slick is already in the theme.** Slick is a jQuery library; on a site that has
  moved past jQuery, `ebt_slideshow` (wave 60, FlexSlider) or `slider_collection` (wave 66,
  Swiper / Tiny Slider) avoid reintroducing the dependency. That is the deciding factor, not
  features.
- Block types, not paragraph types — placeable in regions and Layout Builder. Shared settings come
  from `ebt_core`.
- **Carousel accessibility, as always:** auto-advance must be pausable (WCAG), and controls need
  accessible names and keyboard operation. Slick's record here is mixed — test it.
- Sixth carousel documented in this campaign; see the comparison table in
  `paragraphs_bootstrap_carousel`.
