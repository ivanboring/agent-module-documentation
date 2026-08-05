<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
EBT Image Gallery adds a ready-made Image Gallery block, with GLightbox providing the full-size viewer.

---

Where the EPT family supplies pre-built **paragraph types**, the Extra Block Types family supplies pre-built **block types**, sharing an `ebt_core` for the common settings just as EPT does. The distinction matters for where the component can go: a paragraph lives inside a content entity's field, so it belongs to a page; a block can be placed in a region through block layout, dropped into a Layout Builder section, or referenced from a field with `block_field` — which makes it the right shape for something that should appear on many pages or in a sidebar rather than inside one page's body. This one is a gallery, requiring `ebt_core`, core `media` and the **`glightbox`** module for the viewer. GLightbox, like Tiny Slider in the EPT carousel, is a **vanilla-JavaScript library with no jQuery**, which is the right direction for a modern Drupal front end. Version **2.0.0**, core requirement `^10.1 || ^11 || ^12`, and the same installation prerequisite as its siblings — an image media type must exist, or the install fails on an unmet configuration dependency. The lightbox checklist applies as it does to every such component and is worth verifying rather than assuming: focus trapped inside the viewer while open, focus returned to the thumbnail on close, Escape to dismiss, the viewer announced as a dialog, and thumbnails on the page with the full-size image fetched on demand rather than twenty originals loaded up front.

---

- Add an image gallery block.
- Place a gallery in a sidebar.
- Show a gallery on several pages.
- Add a gallery to a Layout Builder section.
- Build a photo grid with a lightbox.
- Show exhibition images.
- Add a gallery without custom code.
- Place a gallery block per region.
- Show product photography.
- Build a portfolio block.
- Add a swipeable gallery.
- Show press images.
- Reuse a gallery across the site.
- Build a team photo grid.
- Show event photographs.
- Add a lightbox gallery block.
- Give editors a ready-made gallery.
- Show a project's images in a block.
