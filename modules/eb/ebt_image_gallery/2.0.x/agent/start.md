<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# EBT Image Gallery (ebt_image_gallery) — agent index

Ready-made **Image Gallery block** with **GLightbox** as the viewer. Requires `ebt_core`,
`glightbox` and core `media`. Version **2.0.0**. Core requirement `^10.1 || ^11 || ^12`.

**EBT vs EPT — the distinction decides where the component can go:**
- **EPT** supplies pre-built **paragraph types** — they live inside a content entity's field, so
  they belong to *a page*;
- **EBT** supplies pre-built **block types** — placeable in a region via block layout, droppable
  into a **Layout Builder** section, or referenceable from a field with `block_field`. The right
  shape for something appearing on **many** pages or in a sidebar.

Both share a `*_core` module for common settings (spacing, background, container width).

**Library choice:** GLightbox is **vanilla JavaScript, no jQuery** — same direction as Tiny Slider
in `ept_carousel`.

**Installation prerequisite:** an **image media type** must exist, or the install fails on an unmet
configuration dependency.

**Lightbox checklist — verify, do not assume:** focus trapped while open, focus returned to the
thumbnail on close, Escape to dismiss, announced as a dialog, and **thumbnails on the page** with
the full-size image fetched on demand.
