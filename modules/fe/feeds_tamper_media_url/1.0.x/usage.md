<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Feeds Tamper Media URL adds a Tamper plugin that turns a file URL in an imported row into a **media entity**, so a feed carrying image or document links can populate a media field directly.

---

The recurring shape of a content import is that the source has a column of URLs — product images, document links, photo references — and the destination is a media reference field. Bridging those means downloading each file, creating a file entity, wrapping it in a media entity of the right type, and returning its id for the field to reference. Doing that in a Feeds process pipeline normally requires a custom plugin. This module supplies it as a Tamper plugin: `src/Plugin` contains it, and that is essentially the whole module — five files, no dependencies declared beyond core, no routes, permissions or configuration, on core `^10 || ^11`. Two things matter operationally. The URLs come from the **feed source**, so the import fetches whatever they point at — which is a server-side request driven by the feed's contents, and therefore something to think about when the feed is not fully trusted. And downloading files during an import makes the import as slow and as fragile as the slowest remote host, so a large feed benefits from being run outside a web request.

---

- Create media entities from URLs in a feed.
- Import product images from a supplier feed.
- Populate a media field during an import.
- Turn document links into media entities.
- Avoid a custom Feeds plugin for media.
- Import photos referenced by URL.
- Chain media creation with other Tamper plugins.
- Migrate assets alongside content.
- Import from a CSV of image URLs.
- Create media of a specific type.
- Handle remote assets in a scheduled import.
- Populate a gallery from a feed.
- Import logos for a directory.
- Reuse an existing Feeds importer.
- Convert URL columns to media references.
- Import attachments from a legacy export.
- Keep media creation inside the Tamper pipeline.
- Support a recurring supplier import.
