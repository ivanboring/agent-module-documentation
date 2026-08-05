<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Extra Block Types (EBT): Slideshow (ebt_slideshow) — agent index

Ready-made **Slideshow block type** built on FlexSlider. Part of the **Extra Block Types** family
(`ebt_core ^2.0`). Depends on core `media`, `media_library` and `paragraphs`.
Slider library: `levmyshkin/flexslider ^2.7` (a maintained FlexSlider fork, installed via
composer). Core requirement `^10.1 || ^11 || ^12` — already declares Drupal 12.

Key facts:
- **Block types, not paragraph types** — that is the difference from the EPT family
  (`ept_text`, wave 56). Components here are block content types, so they can be placed in
  regions and in Layout Builder. `paragraphs` remains a dependency because a paragraph variant
  template ships too.
- Mostly configuration + templates: `config/install` defines the block type and fields; four
  Twig templates cover the render contexts:
  - `block--block-content--ebt-slideshow.html.twig`
  - `block--inline-block--ebt-slideshow.html.twig`
  - `field--block-content--field-ebt-slideshow--ebt-slideshow.html.twig`
  - `paragraph--ebt-slideshow--default.html.twig`
- Common settings (spacing, background, container width) come from `ebt_core`, shared across all
  EBT components — same trade-off as EPT: many small modules, one shared core.
- No routes, no permissions, no services of its own.
