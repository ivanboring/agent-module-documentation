<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Paragraphs Bootstrap Carousel supplies a carousel paragraph type built on Bootstrap's own carousel component, for sites already themed with Bootstrap.

---

This is the fifth carousel documented in this campaign, and the useful question is not what it does — they all show rotating slides — but which one fits. `diba_carousel` (wave 55) is a standalone block on Bootstrap; `ebt_slideshow` (wave 60) is a block type on FlexSlider; `varbase_carousels` (wave 62) is Varbase-native block content; `slider_collection` (wave 66) is a Views style with pluggable libraries. This one is a **paragraph type on Bootstrap**, which suits a site whose pages are assembled from paragraphs and whose theme is already Bootstrap-based — the markup and behaviour come from Bootstrap's carousel, so nothing extra is loaded and the styling matches. It depends on `paragraphs` and targets `^10 || ^11`. Two things to check, and they apply to every carousel rather than this one specifically. Bootstrap's JavaScript must actually be present — on a non-Bootstrap theme the markup renders and nothing rotates. And carousels have a poor accessibility record: auto-advancing content that moves without user action is a WCAG problem unless it can be paused, and controls need proper labels and keyboard operation. Verify both rather than assuming the framework handles them.

---

- Add a carousel as a paragraph.
- Build a slider on a Bootstrap theme.
- Add rotating slides to a page.
- Reuse Bootstrap's carousel component.
- Give editors a slider component.
- Add a testimonial carousel.
- Show partner logos rotating.
- Build a hero slider from paragraphs.
- Match a Bootstrap-themed site.
- Avoid loading a second slider library.
- Add slides in the paragraph widget.
- Support a component-based page.
- Show a photo carousel.
- Reorder slides by dragging.
- Add a carousel without custom code.
- Support a marketing landing page.
- Keep markup consistent with the theme.
- Build a product highlights slider.
