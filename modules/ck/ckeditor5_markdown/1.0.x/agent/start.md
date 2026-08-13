<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# CKEditor5 Markdown (ckeditor5_markdown) — agent index

**A CKEditor 5 toolbar button ("Paste Markdown") that converts pasted/typed Markdown to HTML via the `marked` library and inserts it into the editor.**

- **Version:** 1.0.x
- **Core:** ^10.3 || ^11 || ^12
- **Dependencies:** `ckeditor5` (core); bundles the `marked` JS library.
- **CKEditor plugin:** `markdownPaste.MarkdownPaste`, toolbar item `markdownPaste` (`ckeditor5_markdown.ckeditor5.yml`), `elements: false` (adds no new allowed tags).
- **Libraries:** `ckeditor5_markdown/markdownPaste`, `…/markdownPasteAdmin`.
- **PHP surface:** none — no routes, permissions, services, config schema or DB.
- **Setup:** drag **Paste Markdown** into a CKEditor 5 text format's active toolbar (`/admin/config/content/formats`).

**Security:** JS-only editor plugin; no server endpoints or permissions of its own. Converted HTML is still filtered by the text format on save, and the plugin declares no extra allowed elements, so it adds no XSS surface beyond the format's existing filter configuration. Access is governed by "use" of the text format.
