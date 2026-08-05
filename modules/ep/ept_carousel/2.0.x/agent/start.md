<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# EPT Carousel (ept_carousel) — agent index

Ready-made **Carousel paragraph type** built on **Tiny Slider**, slides from the media library, an
optional link per slide. Requires `ept_core`, `paragraphs`, core `link`, `media`, `media_library`.
Version **2.0.1**. Core requirement `^10.1 || ^11 || ^12`.

**The library choice is the distinguishing detail.** Tiny Slider is small **vanilla JavaScript with
no jQuery** — the alternatives in this space (Slick, Owl) are jQuery-era, heavier, and increasingly
awkward on a Drupal that has removed jQuery from core's front end.

**Installation prerequisite, shared with the rest of the family:** **`media.type.image`** must
exist. On a minimal profile the install fails with an unmet configuration dependency until an image
media type is created.

**Ask the carousel question before building one:** engagement with slides after the first is
consistently very low; auto-advance moves content while it is being read (an accessibility
problem); on mobile it pushes real content below the fold. Fine for a visitor-driven gallery, a
logo strip, or a rotation somebody actually curates. Where it exists because several teams each
wanted the top of the homepage, say plainly that everything after slide one is close to unseen.

Siblings: `ept_slideshow` (Flexslider, wave 73), `ept_tiles` (wave 71), `ept_tabs` (wave 74).
