<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Focal Point Focus applies an image's chosen focal point as a CSS `object-position`, so an image filling a fixed-aspect container keeps its subject in frame without generating a cropped derivative.

---

Focal Point lets an editor mark the important part of an image, and Drupal's crop effects then use that point when generating derivatives. That works well when the output size is known in advance and less well for the modern layout pattern where an image fills a flexible container with `object-fit: cover` — the browser crops, and it crops from the centre regardless of what the editor marked, so faces get cut off in exactly the way the focal point was set to prevent. This module carries the focal point through to CSS instead, emitting `object-position` so the browser's own cropping honours it. The result is that one derivative serves many container shapes correctly, which is fewer image styles and less storage than generating a crop per aspect ratio. It depends on `focal_point` and targets `^10 || ^11`. Worth pairing in the mind with `image_scale_and_crop_without_upscale` (wave 63) and `focal_point` itself: these are the three levers for getting editor-controlled cropping right, and they operate at different points — derivative generation, upscaling policy, and browser-side positioning.

---

- Keep a subject in frame in a flexible container.
- Honour the focal point with object-fit cover.
- Avoid faces cropped out of a card image.
- Reduce the number of image styles needed.
- Serve one derivative to many aspect ratios.
- Improve a responsive card grid.
- Respect editor cropping choices in CSS.
- Avoid generating a crop per ratio.
- Improve hero image framing.
- Reduce derivative storage.
- Keep a logo positioned correctly.
- Improve a masonry layout.
- Handle portrait and landscape sources.
- Improve mobile image framing.
- Reduce editorial complaints about cropping.
- Support a design system's image components.
- Position images without custom CSS.
- Keep the subject visible at any size.
