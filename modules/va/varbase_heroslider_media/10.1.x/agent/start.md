<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Media Hero Slider (varbase_heroslider_media) — agent index

> **Deprecated.** `varbase_heroslider_media.info.yml` declares `lifecycle: deprecated` and
> `package: Varbase (deprecated)`, with `lifecycle_link` pointing at the project page. Do not
> recommend it for new work — document or migrate existing use instead.

A configured homepage hero slider for Varbase: Media Hero Slide nodes, ordered by Entityqueue,
rendered through Slick.

Key facts:
- Dependencies: `varbase_media`, `varbase_components`, `slick`, `slick_views`. The `install:`
  list adds `link`, `menu_ui`, `entityqueue`, `rabbit_hole`, `field_group`, `length_indicator`,
  `advanced_text_formatter`, `maxlength`. **It cannot be used outside the Varbase stack.**
- No routes, no permissions, no services. The module is templates + JS + configuration.
- Templates: `node--media-hero-slide.html.twig`,
  `views-view--media-hero-slider.html.twig`, and
  `media-oembed-iframe--remote-video--varbase-media-hero-slider.html.twig`.
- JS is split by where it runs: `video.heroslider.{local,youtube,vimeo}.js` run in the page;
  `oembed-frame.heroslider.{youtube,vimeo}.js` run **inside the oEmbed iframe**. If hero video
  playback misbehaves, check which of the two contexts the broken script belongs to.
- Rabbit Hole is what prevents slide nodes being reachable at their own URL.
- `recipes/default` holds the shipped recipe; `includes/updates/` carries cross-release config
  updates.
