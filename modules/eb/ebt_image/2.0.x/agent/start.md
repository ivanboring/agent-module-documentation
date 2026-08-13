<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Extra Block Types (EBT): Image (ebt_image) — agent index

**Provides an `ebt_image` custom block type that shows a single Media image with caption, link, on-the-fly image style, and an optional GLightbox popup.**

- **Version:** 2.0.x
- **Core:** ^10.1 || ^11 || ^12
- **Depends on:** ebt_core, media, link, glightbox
- **Block type:** `ebt_image`. Fields: `field_ebt_image` (media), `field_ebt_image_caption`, `field_ebt_image_link`, `field_ebt_settings`.
- **Behavior:** `EbtImageHooks::preprocessBlock` (hook_preprocess_block) → `_ebt_image_apply_image_style()` swaps the image style, `_ebt_image_apply_lightbox_image_style()` builds the GLightbox URL from the Media source file.
- **Libraries:** `ebt_image/ebt_image` (CSS), `ebt_image/ebt_image_lightbox` (depends on glightbox + init).
- **Routes/permissions/services:** none (autowired `EbtImageHooks` only).

**Security:** display-only block type; no routes, no permissions, no request handling. Lightbox URLs are built via core File/ImageStyle APIs.
