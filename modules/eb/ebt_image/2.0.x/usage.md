<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Extra Block Types (EBT): Image provides an `ebt_image` block content type that displays a single Media image with an optional caption, link, configurable image style, and a GLightbox popup.

---

Part of the Extra Block Types family (built on `ebt_core`), this module installs a reusable custom block type with a Media reference field (`field_ebt_image`), a caption field, a link field, and an `ebt_settings` field carrying the EBT design options plus image-specific settings. Its `hook_preprocess_block` implementation (`EbtImageHooks::preprocessBlock`) swaps the rendered image formatter to the image style chosen in `ebt_settings` on the fly, and when the lightbox option is enabled it loads the referenced Media's source file and computes an absolute lightbox URL — optionally through a separate `lightbox_image_style` — exposing `show_lightbox`/`lightbox_url` to the template so GLightbox can open the full image. GLightbox assets come from the `glightbox` contrib module; the module also ships its own component CSS.

Typical setup is to enable the module (which auto-creates the block type and fields), add an EBT Image block via Layout Builder or Block layout, pick a Media image, and choose the display image style, optional link, and lightbox behavior in the block's Settings tab. Security posture is inert: rendering uses standard Media/File/ImageStyle APIs and there are no routes, permissions, or request-handling endpoints.

---
- Enable the module to auto-create the `ebt_image` block type and fields.
- Add an EBT Image block to a page via Layout Builder.
- Place an image block in a region through Block layout.
- Display a single Media library image in a block.
- Choose which image style renders the image.
- Add a caption below the image.
- Wrap the image in a link to another page.
- Enable a GLightbox popup to view the full image.
- Use a separate image style for the lightbox popup image.
- Show the original (unstyled) file in the lightbox.
- Apply EBT design options (margin, padding, border) to the block.
- Set a background color or background image style on the block.
- Configure edge-to-edge or max-width container for the block.
- Reuse the same image block across multiple pages.
- Swap the image style without changing the field formatter config.
- Present a clickable thumbnail that opens a larger image.
- Build a simple hero-style image block with caption.
- Use responsive breakpoints inherited from EBT Core.
- Use it as a standalone block type without other EBT modules.
- Combine with Layout Builder Modal for faster block placement.
