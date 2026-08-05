<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# PhotoSwipe Inline (photoswipe_inline) — agent index

Renders **PhotoSwipe** galleries **inline**, extending the `photoswipe` module beyond its
field-formatter case. Version **1.0.2**. Core requirement `^10 || ^11`.

**What "inline" adds:** the parent module wires PhotoSwipe to image **fields**. This covers what
that cannot — images inside **body text**, images in a **custom render array**, and galleries
assembled from **more than one source** — so long-form editorial with photographs distributed
through it behaves as a gallery rather than a set of unrelated images.

**Why PhotoSwipe over other lightboxes:** pinch-zoom, momentum scrolling, high-resolution image
swapping, and touch behaviour matching a phone's own photo viewer.

**Two things to confirm, true of any lightbox:**
1. **Keyboard and screen reader** — focus trapped while open, focus returned to the thumbnail on
   close, Escape to dismiss, announced as a dialog. PhotoSwipe's own implementation is comparatively
   good here, which is part of its appeal.
2. **What is actually loaded.** The page should carry **thumbnails** and fetch the large image on
   demand. A gallery loading twenty originals up front spends several megabytes before anyone
   clicks.
