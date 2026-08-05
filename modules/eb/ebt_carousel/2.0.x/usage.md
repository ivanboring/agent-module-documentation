<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
EBT Carousel adds a ready-made Carousel block type built on Tiny Slider, with slides selected from the media library.

---

The Extra Block Types family is the block-shaped counterpart to EPT's paragraph types, and the distinction decides where a component can go. A paragraph lives inside a content entity's field, so it belongs to one page; a **block** can be placed in a region through block layout, dropped into a Layout Builder section, or referenced from a field — which is the right shape for a carousel that should appear on many pages, in a sidebar, or as part of the site's furniture rather than one article's body. Both families share a `*_core` module for common settings. The library is **Tiny Slider**, small vanilla JavaScript with no jQuery, which is the right direction for a modern Drupal front end where jQuery is no longer part of core's front-end stack. Version **2.0.0**, core requirement `^10.1 || ^11 || ^12`, requiring `ebt_core`, `paragraphs`, core `link`, `media` and `media_library`, with the usual family prerequisite that the media types must already exist. And the carousel question applies as it does every time: **engagement with slides after the first is consistently very low**, auto-advance moves content while it is being read, and on mobile a carousel pushes real content below the fold — so it is right for a logo strip, a visitor-driven gallery or a rotation somebody genuinely curates, and it is the compromise nobody's metrics benefit from when several teams each want the same space.

---

- Add a carousel block to a sidebar.
- Show a rotating set of promotions.
- Place a carousel in a Layout Builder section.
- Build a logo strip block.
- Reuse a carousel across pages.
- Show featured items in rotation.
- Add a slider to a region.
- Build a testimonial carousel block.
- Show partner logos site-wide.
- Add a gallery block.
- Build a homepage feature rotation.
- Show product highlights in a block.
- Add a carousel without jQuery.
- Place a slider in a footer.
- Show case studies in rotation.
- Build a news carousel block.
- Add a swipeable block component.
- Show event highlights in a region.
