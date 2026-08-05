<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# EBT Carousel (ebt_carousel) — agent index

Ready-made **Carousel block type** built on **Tiny Slider**, slides from the media library.
Requires `ebt_core`, `paragraphs`, core `link`, `media`, `media_library`. Version **2.0.0**.
Core requirement `^10.1 || ^11 || ^12`. Media types must already exist (family prerequisite).

**EBT vs EPT — the distinction decides where the component can go:**
- **EPT paragraph types** live inside a content entity's field — they belong to *a page*;
- **EBT block types** are placeable in a region, droppable into a **Layout Builder** section, or
  referenceable from a field — right for something appearing on **many** pages or as site furniture.

**Library choice:** **Tiny Slider** — small vanilla JavaScript, **no jQuery**, the right direction
now that jQuery is not part of core's front-end stack. Same choice as `ept_carousel`.

**The carousel question applies as always:** engagement with slides after the first is consistently
very low; auto-advance moves content while it is being read; on mobile it pushes real content below
the fold. Right for a logo strip, a visitor-driven gallery, or a rotation somebody curates — and the
compromise nobody's metrics benefit from when several teams want the same space.
