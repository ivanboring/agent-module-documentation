<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Slider collection (slider_collection) — agent index

**Base module** for slider implementations, with a Views style. Depends on core `views`.
Core requirement `^10 || ^11`.

| Submodule | Library |
|---|---|
| `sc_swiper` | **Swiper** (the current standard) |
| `sc_tinyslider` | Tiny Slider (small, vanilla JS) |

Key facts:
- **Enabling the base alone does nothing visible** — a library submodule is required.
- Abstraction: `SliderCollectionSliderBase`, `SliderCollectionViewsStyleBase`, plus `src/Event/`
  for extension. Adding a library means writing a submodule, not adopting another slider module.
- Because the slider **is a Views style**, slide selection, filtering, sorting and paging are
  ordinary Views concerns — a real advantage over the block/paragraph-based sliders documented
  elsewhere in this campaign (`diba_carousel` wave 55, `ebt_slideshow` wave 60,
  `varbase_carousels` wave 62).
- No routes, permissions or configuration pages of its own.
