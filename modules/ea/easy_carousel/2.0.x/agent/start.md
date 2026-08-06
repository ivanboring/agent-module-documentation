<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Easy Carousel (easy_carousel) — agent index

Carousel rendered from a **field of media items**. Depends on core `field` and `media`. Package
`Custom`. Version **2.0.0**. **Core requirement `^11` — Drupal 11 only.**

**Two routes to a carousel — this is the lighter one:**
- **framework route** (EPT/EBT families, Layout Builder components, a paragraph type) — a placeable
  component with settings, plus a dependency tree and a way of building pages;
- **field route (this)** — a content type gets a media field that renders as a carousel. No new
  component model, nothing to learn, and correspondingly **less control over placement and
  appearance**.

Package `Custom` usually marks a module released from one project's work: expect it to solve **that**
case precisely and document sparsely.

**The carousel summary, as everywhere:** engagement past the first slide is consistently **very
low**; auto-advance moves content while it is being read (an accessibility problem); on mobile it
pushes real content below the fold. **Right** for a visitor-driven gallery where looking through the
images *is* the task. **Wrong** as a way of giving four teams the same homepage space — three of them
are not seen.
