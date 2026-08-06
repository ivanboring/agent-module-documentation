<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Easy Carousel provides a carousel built from a field of media items, aiming at the case where a site wants a slider without adopting a component framework.

---

There are two ways to add a carousel to Drupal and this is the lighter one. The **framework route** — the EPT and EBT families, Layout Builder components, a paragraph type — gives an editor a placeable component with settings, and brings a dependency tree and a way of building pages with it. The **field route**, which this takes, gives a content type a media field that renders as a carousel: no new component model, no paragraph types, nothing to learn, and correspondingly less control over where it goes and how it looks. For a site that wants images on an article to rotate, the second is proportionate. Version **2.0.0** on **`^11`** — Drupal 11 only — depending on core `field` and `media`, in the `Custom` package, which usually marks a module released from a specific project's work rather than built for general use: expect it to solve that project's case precisely and document sparsely. The carousel points apply here as everywhere, and the honest summary is short: **engagement past the first slide is consistently very low**, auto-advance moves content while it is being read and is an accessibility problem, and on mobile a carousel pushes real content below the fold. Right for a visitor-driven gallery of photographs where looking through them *is* the task; wrong as a way of giving four teams the same space on a homepage, where the result is that three of them are not seen.

---

- Add a simple image carousel to a page.
- Rotate photographs on an article.
- Build a gallery from a media field.
- Add a slider without a component framework.
- Show product images in sequence.
- Add a carousel to a content type.
- Build a photo rotation.
- Show a set of images compactly.
- Add a lightweight slider.
- Display event photographs.
- Show a portfolio's images.
- Add a carousel field to a node.
- Build a simple media slider.
- Show a property's photographs.
- Add rotating images to a listing.
- Display a gallery on a profile.
- Show a project's images in sequence.
- Add a carousel with minimal setup.
