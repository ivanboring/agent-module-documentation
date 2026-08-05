<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
PhotoSwipe Inline renders PhotoSwipe galleries inline, extending the `photoswipe` module beyond its field-formatter case.

---

PhotoSwipe is the strongest of the common lightbox libraries for photographic content: pinch-zoom, momentum scrolling, high-resolution image swapping and touch behaviour that matches what people expect from a phone's own photo viewer. The `photoswipe` module wires it to image fields as a formatter, which covers a node's gallery field and not much else. "Inline" covers what the formatter cannot — images inside body text, images in a custom render array, a gallery assembled from more than one source — so a piece of long-form editorial with photographs distributed through it behaves like a gallery rather than like a set of unrelated images. Version **1.0.2** on core `^10 || ^11`, extending `photoswipe`. Two things to check, both true of any lightbox and worth confirming rather than assuming. **The keyboard and screen-reader behaviour**: focus trapped inside the viewer while it is open, focus returned to the thumbnail on close, Escape to dismiss, and the viewer announced as a dialog — PhotoSwipe's own implementation is comparatively good here, which is part of its appeal. And **what is actually loaded**: the point of a lightbox is a high-resolution image, so the page should carry thumbnails and fetch the large version on demand — a gallery that loads twenty originals up front is several megabytes spent before anyone has clicked anything.

---

- Add a lightbox to images in body text.
- Build a gallery from mixed sources.
- Add zoomable photographs to an article.
- Support pinch-zoom on mobile.
- Give long-form editorial a gallery.
- Show high-resolution images on demand.
- Add a lightbox outside a field formatter.
- Build a photo essay.
- Group scattered images into one gallery.
- Add touch-friendly image viewing.
- Show exhibition photographs.
- Add a gallery to a custom render array.
- Improve a photography-led page.
- Show product images at full resolution.
- Add swipe navigation between images.
- Support a press photo page.
- Build a portfolio viewer.
- Add captions to a gallery.
