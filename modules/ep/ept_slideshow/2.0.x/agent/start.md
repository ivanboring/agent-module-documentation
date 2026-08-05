<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# EPT Slideshow (ept_slideshow) — agent index

Ready-made **Slideshow paragraph type** built on **Flexslider**, slides chosen through the media
library. Requires core `media`, `media_library`, plus `ept_core` and `paragraphs`.
Version **2.0.0**. Core requirement `^10.1 || ^11 || ^12`.

**Installation note:** it requires **`media.type.image`** to exist. On a minimal profile the
install fails with an unmet configuration dependency —
`ept_slideshow_item.field_ept_slideshow_slide (media.type.image)`. Create the image media type
first.

**Worth raising before building a carousel — it rarely gets asked:**
- usage data consistently shows **very low engagement with slides after the first**;
- auto-advance is a recurring **accessibility** problem: content moves away while being read, and
  it needs pause control, keyboard operation and correct announcement to be usable;
- on mobile it **pushes real content below the fold**.

Fine where the carousel has a genuine reason (an editorial rotation, a visitor-driven gallery).
Where it exists because three departments each wanted the top of the homepage, say plainly that
everything after slide one is close to unseen.

Same family trade as `ept_tiles` (wave 71): quick to adopt, awkward to diverge from, and it becomes
a dependency of the content.
