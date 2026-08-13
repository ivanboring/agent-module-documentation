<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Auto Rotate Lite (auto_rotate_lite) — agent index

**An image-style effect that rotates JPEG/TIFF derivatives per their EXIF `Orientation` flag; originals are left unchanged.**

- **Version:** 1.0.x
- **Core:** ^10 || ^11 (no contrib deps; needs PHP `exif` + GD)
- **Plugin:** `#[ImageEffect(id: "auto_rotate_lite")]` `AutoRotateLiteImageEffect` — `applyEffect()` rotates 180/90/270 for EXIF orientation 3/6/8; `transformDimensions()` swaps W/H for orientation 5-8.
- **Setup:** add the effect to an image style at `/admin/config/media/image-styles`.

**Security:** Pure image-derivative processing; no routes, permissions, services, or user-controlled input beyond the image file. `exif_read_data()` is called on the local file path with an error-suppressed read; no network or SQL. No security findings.
