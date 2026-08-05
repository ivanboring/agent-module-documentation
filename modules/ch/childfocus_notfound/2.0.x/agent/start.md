<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Childfocus (notfound.org) (childfocus_notfound) — agent index

Block showing a **notfound.org** missing-child appeal on the 404 page. Depends on core `block`.
**Core requirement `^11` — Drupal 11 only**, unusually narrow.
Settings at `/admin/config/childfocus_notfound` (`administer site configuration`).

Key facts:
- notfound.org is a **Child Focus** (Belgian) initiative: participating sites show a missing-person
  appeal in the otherwise-dead 404 space, with cases selected by visitor region.
- **It embeds third-party content**, so:
  - it adds an external request into the 404 response — include it in the same review as any other
    embedded widget, including consent policy if that covers third-party content;
  - **404s are requested far more often than page views suggest** (crawlers, scanners, broken
    links), so the embed's volume is higher than it looks.
- Surface: `src/Plugin/Block/`, `src/Form/ChildfocusNotfoundForm.php`, `config/install`,
  `config/schema`, `.install`.
- Placement is an ordinary block-visibility decision — restrict it to the 404 page rather than
  site-wide.
