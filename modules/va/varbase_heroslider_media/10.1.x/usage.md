<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Media Hero Slider builds the large image-and-video slider that sits at the top of a Varbase homepage, wiring together a Media Hero Slide content type, an Entityqueue for ordering, and Slick for the carousel itself. **Its `info.yml` marks it `lifecycle: deprecated`** — new sites should not adopt it.

---

The module ships almost no PHP. What it provides is a configured slider: three Twig templates (`node--media-hero-slide.html.twig`, `views-view--media-hero-slider.html.twig`, and an oEmbed iframe override for remote video), five JavaScript files that drive playback for local video, YouTube and Vimeo — including two `oembed-frame.*` scripts that run inside the oEmbed iframe rather than the parent page — plus a `recipes/default` directory and `includes/updates` for cross-release configuration. Ordering comes from Entityqueue; Rabbit Hole stops slide nodes being reachable as standalone pages; Field Group, Maxlength, Length Indicator and Advanced Text Formatter shape the slide editing form. Dependencies are on `varbase_media` and `varbase_components`, so it is not usable outside the Varbase stack. Given the deprecation, the honest reading is that this documents an existing Varbase site's homepage slider, not a component to add to a new build.

---

- Understand an existing Varbase site's homepage hero slider.
- Display a mixed image and video slider above the fold.
- Play YouTube or Vimeo video inside a hero slide.
- Order slides with an Entityqueue rather than by date.
- Stop slide nodes appearing as standalone pages.
- Constrain slide headline length during editing.
- Theme the hero slider with the supplied Twig overrides.
- Autoplay a local video in a hero slide.
- Group slide fields on the edit form.
- Reuse Varbase's slider markup in a custom theme.
- Migrate a hero slider away from this deprecated module.
- Audit which Varbase features a site still depends on.
- Apply configuration updates across Varbase releases.
- Control oEmbed iframe behaviour for hero video.
- Give editors a fixed slot count for homepage promotion.
- Keep hero slide content out of search listings.
- Reproduce the same hero pattern on another Varbase site.
- Decide whether a slider replacement is needed before upgrading.
- Read the shipped recipe to see the intended configuration.
