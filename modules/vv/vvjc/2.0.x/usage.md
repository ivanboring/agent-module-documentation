<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
VVJC renders Views results as a 3D carousel, built on vanilla JavaScript with no framework dependency.

---

The fourth member of the VVJ family, alongside the accordion, basic carousel and tabs formats, sharing `vvj_core`'s foundation. Where the basic carousel moves items horizontally, this one arranges them in perspective — a shape that suits a small set of items given prominence rather than a long list.

Everything said about the family applies: vanilla JavaScript rather than a jQuery plugin, accessibility treated as the requirement, and Views doing the filtering, sorting, access and caching while the module only renders.

**Two cautions specific to a 3D carousel.** The general carousel objection applies with more force — items rotated away from the viewer are not merely below the fold, they are visually de-emphasised on purpose, so this is a presentation for things that are equally optional rather than a way to show several important items. And **perspective transforms are motion**: a visitor who has set `prefers-reduced-motion` should get a static or simplified presentation, so check what the shipped CSS does with that media query.

Core requirement is `^11.3 || ^12` with PHP 8.3, so like the rest of the family this is for current Drupal only.

---

- Render Views results as a 3D carousel.
- Give a small set of items visual prominence.
- Present equally optional items in rotation.
- Avoid a jQuery carousel plugin.
- Keep Views filters and access in play.
- Check keyboard operation of the carousel.
- Respect prefers-reduced-motion.
- Provide a static fallback for reduced motion.
- Theme the carousel with the site's CSS.
- Combine with a Views contextual filter.
- Avoid placing important content in rotation.
- Share the VVJ foundation with other formats.
- Plan a Drupal 11.3+ front-end stack.
- Compare with the basic carousel format.
- Audit carousels for accessibility.
