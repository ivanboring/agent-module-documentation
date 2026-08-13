<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Extra Block Types (EBT): Video (ebt_video) — agent index

**Provides an `ebt_video` custom block type that embeds a single remote or local Media video, optionally in a GLightbox popup.**

- **Version:** 2.0.x
- **Core:** ^10.1 || ^11 || ^12
- **Depends on:** media, ebt_core, glightbox, glightbox_media_video, paragraphs
- **Block type:** `ebt_video`. Fields: `field_ebt_video` (media), body, `field_ebt_settings`.
- **Provides:** an `ebt_video` media view mode + view displays for core `video` and `remote_video` media types; `ebt_settings_video` field widget; play-button SVG, CSS, templates.
- **Popup:** GLightbox video via the `glightbox_media_video` integration.
- **Routes/permissions/services:** none.

**Security:** display-only block type; no routes, no permissions, no request handling, no mutating endpoints.
