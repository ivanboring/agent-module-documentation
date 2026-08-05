<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Splidebox provides a lightbox built on the Splide slider, so clicking an image in a gallery opens it full-size with the rest of the set navigable in place.

---

The lightbox is a solved problem with many implementations, and what distinguishes them now is the library underneath. Splide is a modern, dependency-free slider — no jQuery — which is the reason to pick this over the older Colorbox and Fancybox integrations on a site that has moved past jQuery, and it means the gallery navigation inside the lightbox is the same component the site may already use for carousels. It depends on `splide` for the library integration and `blazy`, which supplies the lazy-loading and media-handling layer that several Drupal media modules build on; that second dependency is worth noticing, because Blazy is a substantial module in its own right and pulling it in for a lightbox alone is a larger commitment than it first appears. Core requirement is `^10 || ^11`. The accessibility points are the ones that separate a good lightbox from a bad one and should be tested rather than assumed: focus must move into the dialog and be trapped there, Escape must close it, focus must return to the trigger afterwards, and the dialog needs the right role and label — a lightbox that fails these is unusable by keyboard and confusing with a screen reader.

---

- Open gallery images in a lightbox.
- Navigate a photo set full-size.
- Add a lightbox without jQuery.
- Reuse Splide for gallery navigation.
- Show a product image gallery.
- Enlarge an article's images.
- Provide a modern lightbox on a Drupal 10 site.
- Combine lazy loading with a lightbox.
- Show captions in the lightbox.
- Support touch swipe in a gallery.
- Replace a jQuery-based lightbox.
- Show a media library selection full-size.
- Improve an image-heavy article.
- Support a portfolio site.
- Show a case study's images.
- Provide keyboard navigation in a gallery.
- Match a Splide-based theme.
- Enlarge a diagram for readability.
