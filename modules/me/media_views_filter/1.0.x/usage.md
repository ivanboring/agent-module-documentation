<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Media Views Filter adds Views filters and fields for media entities, to make the media library and media administration screens actually searchable.

---

The media library becomes unusable at scale, and the reason is that the filters available on it are thin. A site with fifteen thousand images has a grid, a name filter and a type filter, and finding "the header image we used on the campaign page in March" means scrolling. What editors need is filtering on the things that distinguish media: file size, dimensions, MIME type, whether the item is referenced anywhere, when it was last used, who uploaded it. This module supplies filters and fields in that direction, so the library view and the media overview can be rebuilt into something a person can search. Version **1.0.0-rc1** — a release candidate — on core `^9 || ^10 || ^11`; the package name `OHSU` marks it as a module released from an institution's own site work, which is common and usually means it solves that institution's problem precisely and documents it sparsely. Two useful notes. The **media library modal is itself a view** (`media_library`), so filters added here can be placed in it, which is where they matter most — the administration listing is used far less than the picker. And **"is this used anywhere" is the highest-value filter and the most expensive**: usage tracking requires either a reverse-reference query across every field that could point at media or an index maintained on save, so check what the module does before enabling it on a large library.

---

- Filter media by file size.
- Find images by dimensions.
- Filter the media library by MIME type.
- Find unused media items.
- Search media by uploader.
- Make a large media library usable.
- Filter media by upload date.
- Add filters to the media picker.
- Find oversized images.
- Audit unreferenced media.
- Filter media by file extension.
- Improve the media administration screen.
- Find media used on a specific page.
- Clean up an overgrown library.
- Filter by media type and size together.
- Build a media report view.
- Help editors find the right image.
- Support a media governance review.
