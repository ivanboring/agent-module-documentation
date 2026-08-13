<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Extra Block Types (EBT): Video provides an `ebt_video` block content type that embeds a single video — either a remote video (YouTube/Vimeo) or a locally uploaded Media video — with EBT design options and a GLightbox video popup.

---

Part of the Extra Block Types family (built on `ebt_core`), this module installs a reusable custom block type with a Media reference field (`field_ebt_video`), an optional WYSIWYG body, and an `ebt_settings` field carrying the EBT design options. It ships a dedicated `ebt_video` media view mode and view displays for the core `video` and `remote_video` media types, plus a play-button SVG, component CSS, and templates that render the video (inline or opened in a GLightbox popup via the `glightbox_media_video` integration). Configuration of the video-specific settings is provided through the `ebt_settings_video` field widget; the block's design options (margin, padding, border, background, breakpoints) come from EBT Core.

Typical setup is to enable the module (which auto-creates the block type, fields, and media view mode), add an EBT Video block via Layout Builder or Block layout, reference a remote or local video Media entity, and adjust the design/popup options in the block's Settings tab. Security posture is inert: rendering uses standard Media theming and there are no routes, permissions, or request-handling endpoints in this module.

---
- Enable the module to auto-create the `ebt_video` block type and fields.
- Add an EBT Video block to a page via Layout Builder.
- Place a video block in a region through Block layout.
- Embed a YouTube or Vimeo remote video in a block.
- Embed a locally uploaded video file in a block.
- Open the video in a GLightbox popup instead of inline.
- Show a play-button overlay before the video plays.
- Add a WYSIWYG caption/body alongside the video.
- Apply EBT design options (margin, padding, border) to the block.
- Set a background color or background image style on the block.
- Configure edge-to-edge or max-width container for the block.
- Use the dedicated `ebt_video` media view mode for display.
- Reuse the same video block across multiple pages.
- Present a poster image that opens a video lightbox.
- Build a hero section with a background and a play button.
- Use responsive breakpoints inherited from EBT Core.
- Combine remote and local videos across different blocks.
- Use it as a standalone block type without other EBT modules.
- Combine with Layout Builder Modal for faster block placement.
- Reference an existing Media library video without re-uploading.
