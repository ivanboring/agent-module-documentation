<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Flush Single Image Styles regenerates the derivatives of **one** image, instead of the all-or-nothing choice core offers between flushing an entire image style and flushing nothing.

---

Drupal generates a derivative per image style on first request and keeps it until the style is flushed. When a single image is replaced in place, or a crop is corrected, or one file was generated wrongly, the derivatives for that file are stale — and core's only remedy is "flush this image style", which discards every derivative for every image using it and forces the whole site to regenerate them. On an image-heavy site that is an expensive way to fix one photo. This module targets the file: a form at `/admin/config/media/image-styles/flush-single`, an action plugin (hence the `action` dependency) so it can be used as a bulk operation on media, Drush commands for scripting, and `FlushSingleImage` behind an interface doing the work. Permissions are split: `administer flush_single_image` (marked `restrict access: true`) for the settings, and a separate `flush media image` so editors can flush an image they have just replaced without holding configuration rights. Requirements are core `image` and `action`, with a wide core range.

---

- Regenerate derivatives for one replaced image.
- Fix a single wrongly generated thumbnail.
- Avoid flushing an entire image style.
- Let editors refresh an image they replaced.
- Flush images as a bulk operation on media.
- Script derivative regeneration from Drush.
- Correct a crop without a site-wide flush.
- Reduce load caused by mass regeneration.
- Fix an image that looks stale after replacement.
- Clear derivatives after an image edit.
- Give editors a self-service fix.
- Flush a logo after a rebrand.
- Regenerate a broken derivative.
- Avoid a full cache rebuild for one file.
- Support an editorial image-replacement workflow.
- Flush derivatives during a deployment.
- Fix a WebP or AVIF derivative selectively.
- Reduce support tickets about stale images.
