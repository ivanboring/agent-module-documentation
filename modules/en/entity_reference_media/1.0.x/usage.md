<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Entity Reference Media supplies a field type, widget and formatter for referencing media, extending what core's media reference field offers.

---

Core already has an entity reference field pointing at media entities, with the Media Library widget, so a module in this space exists to add something the core combination does not do — typically per-reference metadata such as a display override, an alternative caption, or a link target stored alongside the reference rather than on the media entity itself. That distinction matters: data belonging to the *relationship* between a node and a media item (how this article crops this image, what caption it uses here) does not belong on the media entity, which is shared across all its uses. The module depends on core `media` and `media_library` and spans `^8.8` through `^11`. The release is **1.0.0-rc7**, a release candidate — long-lived rc numbering usually means a stable API in practice, but it is not a stable release. Before adopting it, confirm what its field type stores beyond the target ID, because if the answer is "nothing extra" then core's own media reference field plus the Media Library widget covers the case with no contrib dependency, and a custom field type is a migration cost later.

---

- Reference a media item from a node.
- Store per-reference media metadata.
- Override a media display per use.
- Add a caption specific to one use.
- Pick media through the media library.
- Reference an image with extra settings.
- Attach a link target to a media reference.
- Build a media-heavy content type.
- Reference a video with a poster override.
- Keep relationship data off the media entity.
- Support an editorial media workflow.
- Select multiple media items.
- Format a media reference consistently.
- Reference documents from a page.
- Support a gallery field.
- Add per-use alt text.
- Extend core's media reference field.
- Show media in a custom view mode.
