<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Image Resizer (image_resize) — agent index

Resizes images and **converts formats** at upload.
Configure at `/admin/config/media/image-resizer` (`administer site configuration`).
Version **1.0.0-beta1** (**beta**). Core `^10.2 || ^11`. Depends on `file`, `image`.

Addresses the **source**, not the presentation — image styles fix display size while the original
stays at full size and dominates storage and backups.

**Two irreversible decisions to settle first:**

1. **Resizing the original discards pixels permanently.** If the site is also an archive, or anyone
   may need print resolution later, keep masters elsewhere and resize only what the web serves.
2. **Format conversion changes what a download gives people.** AVIF is not universally supported
   outside browsers. Converting derivatives is generally safe; converting the stored original less
   so.

Beta, operating on files at upload — test against a copy with representative images.