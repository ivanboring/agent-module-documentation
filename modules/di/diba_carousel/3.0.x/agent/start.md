<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Diba Carousel Slider (diba_carousel) — agent index

A single **block plugin** rendering a Bootstrap carousel from image/link/text fields. All
dependencies are core: `block`, `user`, `node`, `image`, `options`, `link`.
Core requirement `^9.5 || ^10 || ^11`.

Key facts:
- **No route, no permission, no service, no admin section.** You place and configure it through
  the normal block layout UI; the gating permission is core's `administer blocks`.
- Slide data lives in the **block's own configuration** (validated by `config/schema`), so a
  placed carousel exports and imports with `drush cex` / `drush cim` like any other block config.
- Rendering: `src/Plugin` (the block) + `templates/block--diba-carousel.html.twig`, styled from
  `assets/css` via `diba_carousel.libraries.yml`.
- It relies on **Bootstrap's carousel markup and JS**, which it does not bundle. On a
  non-Bootstrap theme the markup renders but the sliding behaviour will not work unless the
  theme supplies Bootstrap's JS.
- No external library download and no CDN request — contrast with `gsap`, documented in this
  same wave, which loads from jsDelivr.
- **Configuration hazard — "Allow html description".** The block form offers a
  `description_allow_html` checkbox (default **off**). With it on,
  `DibaCarousel::composeSlide()` takes the description field's raw **`->value`** and the template
  renders it with `|raw` — so the field's text format is bypassed entirely and whoever can edit
  the source entity controls raw HTML on every page carrying the block. Selectable field types
  include `text_long` and `text_with_summary`, i.e. Body. Leave it off unless the source content
  is authored by people you would grant Full HTML.
  With it off, `strip_tags()` is applied and the output is safe. The title path is safe in all
  three of its template positions.
- The tarball ships a stray `.idea/` directory (PhpStorm project files); harmless, but it will
  show up in file listings.
