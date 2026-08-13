<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Auto Rotate Lite provides one image-style effect that corrects photo orientation using EXIF metadata, without altering the original file.

---

The effect plugin `AutoRotateLiteImageEffect` (`src/Plugin/ImageEffect/`) implements `applyEffect()`: for `image/jpeg` and `image/tiff` sources it reads the EXIF `Orientation` tag via `exif_read_data()` and rotates the derivative 180/90/270 degrees for orientation values 3/6/8. `transformDimensions()` swaps width and height for orientations 5-8 so the image style computes correct dimensions. Rotation is applied only when the image style is rendered, so the uploaded original is never modified. It relies solely on Drupal core and the GD toolkit plus PHP's EXIF extension — no contrib dependencies.

To use it, add the "Auto Rotate Lite" effect to an image style at Configuration > Media > Image styles, and use that style anywhere images are displayed. The module needs PHP's `exif` extension (`exif_read_data`) to be available; when EXIF is missing or the format is unsupported it leaves the image untouched. It is a lighter alternative to the full Image Effects suite or the EXIF Orientation module (which rotates on upload).

---
- Add the "Auto Rotate Lite" effect to an image style.
- Correct sideways/upside-down phone photos automatically on display.
- Keep original uploads untouched (effect applies to derivatives only).
- Rotate JPEG images based on EXIF orientation.
- Rotate TIFF images based on EXIF orientation.
- Get correct width/height in image styles via dimension swapping for rotated photos.
- Combine with scale/crop effects in the same image style.
- Apply the corrected style to media image fields.
- Use on responsive image style mappings.
- Avoid the heavier Image Effects suite for this single need.
- Rely only on core + GD (no extra libraries).
- Handle orientation values 3, 6 and 8 (180/90/270 rotation).
- Fall back gracefully when EXIF data is absent.
- Skip non-JPEG/TIFF images without changes.
- Apply per image style so different displays can opt in or out.
- Log a warning when a toolkit rotate fails.
