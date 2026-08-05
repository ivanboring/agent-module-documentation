<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Diba Carousel Slider provides a single block plugin that renders a Bootstrap carousel from image, link and text fields — a slider you place in a region, with no content type, entity or admin section to set up first.

---

Where most Drupal slider solutions ask you to assemble the pieces — a slide content type, a view, an Entityqueue for ordering, a library integration — this module ships the finished component. The block plugin in `src/Plugin` carries the slide data in its own block configuration, validated by `config/schema`, and renders through `templates/block--diba-carousel.html.twig`; `diba_carousel.libraries.yml` and `assets/css` supply the styling on top of Bootstrap's carousel markup, so a Bootstrap-based theme gets the behaviour it already has JS for. Its dependency list is all core (`block`, `user`, `node`, `image`, `options`, `link`) — no contrib, no external library download, no CDN. There is no route, no permission and no service: placing and configuring the block is done through the normal block layout UI under `administer blocks`. The `core_version_requirement` of `^9.5 || ^10 || ^11` makes it usable across three major versions, and because the configuration lives in the block, a placed carousel exports with the rest of a site's config.

---

- Put an image carousel in a page region.
- Add a homepage banner slider without a content type.
- Build a slider on a Bootstrap-based theme.
- Give each slide a link and caption.
- Configure slides from the block layout UI.
- Export a configured carousel with site configuration.
- Avoid installing a JavaScript slider library.
- Place different carousels in different regions.
- Restrict a carousel to specific pages via block visibility.
- Add a promotional slider to a landing page.
- Provide a lightweight alternative to Slick or Swiper.
- Reuse Bootstrap's existing carousel behaviour.
- Theme the carousel via a single Twig override.
- Ship a carousel as part of a site's config export.
- Keep slider markup consistent with a Bootstrap theme.
- Set up a slider with core dependencies only.
- Give a small site a banner without extra infrastructure.
- Control slide order from the block form.
- Support a site still on Drupal 9.5.
