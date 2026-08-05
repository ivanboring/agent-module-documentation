<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Image Scale and Crop (Without Upscale) (image_scale_and_crop_without_upscale) — agent index

Image effect: Scale and Crop that **does not enlarge** a source smaller than the target.
Depends on core `image`. Core requirement `^9 || ^10 || ^11`.

Key facts:
- Whole module: `src/Plugin/` (the image effect), `config/schema`, and a
  `post_update.php`. No routes, permissions or configuration pages — it is chosen per image style.
- **Fills a real gap in core:** Scale and Crop always produces the configured dimensions, scaling
  up if needed; Scale alone will not crop to an aspect ratio. There is no core way to say "crop to
  this ratio but never enlarge".
- **Design consequence to plan for:** derivatives are no longer guaranteed to be a fixed size. A
  layout that assumes exact dimensions needs CSS that tolerates a smaller image
  (`max-width`/`object-fit` rather than fixed `width`/`height`). That is generally the better
  outcome than a stretched image, but it is a decision, not a free win.
- Swapping the effect on an existing style requires flushing derivatives — `flush_single_image`
  (this wave) or a style flush.
