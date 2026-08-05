<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Image Scale and Crop (Without Upscale) adds an image effect that behaves like core's Scale and Crop but refuses to enlarge an image that is already smaller than the target — so a small upload stays small instead of being blown up into a blurry mess.

---

Core's Scale and Crop always produces an image at the configured dimensions, scaling up if the source is smaller. For a design that needs an exact box that is the right behaviour; for a site where editors upload whatever they have, it means a 400-pixel logo becomes a soft, artefacted 1200-pixel banner, and nobody notices until it is in production. The alternatives in core are unsatisfying: Scale alone will not crop to an aspect ratio, and Scale and Crop cannot be told to stop. This effect fills the gap — `src/Plugin` supplies the image effect, with `config/schema` for its settings and an `image_scale_and_crop_without_upscale.post_update.php` for update handling. The only dependency is core `image` and the range is `^9 || ^10 || ^11`. The design consequence to plan for is that derivatives are no longer guaranteed to be a fixed size, so a layout expecting exact dimensions needs CSS that tolerates a smaller image — which is generally the better outcome than a stretched one, but it is a decision rather than a free win.

---

- Stop small uploads being blown up.
- Crop to an aspect ratio without upscaling.
- Avoid blurry banners from small logos.
- Keep image quality on editor uploads.
- Replace core Scale and Crop where quality matters.
- Protect a hero image from stretching.
- Handle a mixed-quality image library.
- Crop thumbnails without enlargement.
- Improve perceived quality of a listing.
- Avoid artefacts on small source images.
- Keep original size when it is under the target.
- Combine with responsive image styles.
- Reduce complaints about fuzzy images.
- Handle legacy images from a migration.
- Crop consistently without quality loss.
- Support a site still on Drupal 9.
- Apply to selected image styles only.
- Improve accessibility of image-heavy pages.
