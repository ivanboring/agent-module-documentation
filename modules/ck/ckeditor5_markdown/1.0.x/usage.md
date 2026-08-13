<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
CKEditor5 Markdown adds a "Paste Markdown" toolbar button that opens a dialog where an editor pastes Markdown and inserts it into the editor as converted HTML.
---
CKEditor 5 ships an experimental auto-detect "paste Markdown" feature that sniffs the clipboard and can conflict with other paste plugins. This module takes the opposite, explicit approach: editors deliberately click a toolbar button, paste or type Markdown into a dialog, and on confirmation the text is parsed by the bundled `marked` library (with GitHub-Flavored Markdown enabled) and inserted as HTML — no clipboard sniffing, no surprise transformations.

Integration is entirely a CKEditor 5 plugin definition (`ckeditor5_markdown.ckeditor5.yml` exposing the `markdownPaste.MarkdownPaste` plugin and a `markdownPaste` toolbar item) plus JS/CSS libraries (`markdownPaste`, `markdownPasteAdmin`). It has no PHP: no routes, permissions, services, config schema or database. To use it, add the **Paste Markdown** button to a CKEditor 5-based text format's toolbar. Because inserted HTML still passes through the text format's normal filters, the converted output is constrained by whatever tags/filters that format allows — the module does not widen the format's allowed HTML, so enabling it does not by itself introduce an XSS surface beyond the format's existing configuration.
---
- Add a "Paste Markdown" button to a CKEditor 5 toolbar.
- Convert pasted Markdown into formatted HTML on demand.
- Paste GitHub-Flavored Markdown (tables, fenced code, task lists).
- Let editors author in Markdown then insert as rich text.
- Avoid CKEditor's experimental auto-detect paste-Markdown conflicts.
- Migrate Markdown docs into body fields via copy-paste.
- Insert Markdown-formatted release notes into a node.
- Give technical writers a Markdown entry path in the WYSIWYG.
- Enable the button only on selected text formats.
- Convert a Markdown snippet without leaving the editor.
- Trigger conversion explicitly rather than on every paste.
- Keep other paste plugins (Office, Google Docs) unaffected.
- Add the button per format so plain-text formats stay unaffected.
- Paste a Markdown table and get an HTML table.
- Convert Markdown headings and lists into structured HTML.
- Provide a consistent Markdown workflow across content types.
- Insert code blocks written in Markdown fences.
- Let editors preview converted HTML inside the editor before saving.
