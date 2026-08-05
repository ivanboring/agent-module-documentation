<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Slider collection is a **base module** for slider implementations: it defines the shared structure and a Views style, with each JavaScript slider library provided as a submodule.

---

The campaign has documented several sliders by now — `diba_carousel` on Bootstrap, `ebt_slideshow` on FlexSlider, `varbase_carousels` and the deprecated `varbase_heroslider_media` — and each is bound to one library. That binding is the problem this module addresses: `SliderCollectionSliderBase` and `SliderCollectionViewsStyleBase` define the abstraction, `src/Event` provides the extension points, and libraries arrive as submodules — **sc_swiper** for Swiper, the current standard, and **sc_tinyslider** for Tiny Slider, the small vanilla-JS option. A site enables the library it wants and can add another by writing a submodule rather than adopting a second slider module with its own configuration model. Because the Views style is part of the base, a slider is built as a Views display, which means the content, filtering and sorting are ordinary Views concerns. It depends on core `views` alone, with core `^10 || ^11`. Enabling the base module alone does nothing visible — a library submodule is required.

---

- Build a slider from a Views display.
- Use Swiper as the slider library.
- Use Tiny Slider for a lighter footprint.
- Switch slider library without rebuilding the view.
- Filter and sort slides with Views.
- Add a new slider library as a submodule.
- Keep one configuration model across sliders.
- Build a testimonial carousel from content.
- Show recent articles in a slider.
- Reuse Views filters for slide selection.
- Add a slider without a bespoke module.
- Standardise sliders across a site.
- Page slides with Views settings.
- Show a taxonomy-filtered slider.
- Build a partner logo carousel.
- Support a design system's slider component.
- Avoid a slider module per library.
- Extend behaviour via the module's events.
