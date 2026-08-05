<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Wysiwyg Linebreaks converts newline-separated legacy text into HTML paragraphs when it is opened in CKEditor, and back again — the bridge for content written before the site had a rich-text editor.

---

Migrated content routinely arrives as plain text with meaningful blank lines: paragraphs separated by newlines, rendered acceptably by a "convert line breaks" filter. Open one of those in CKEditor and it becomes a single undifferentiated block, because the editor works in HTML and sees no paragraph tags; the editor then "fixes" it on save, producing a diff across every migrated node. This module handles the conversion at the editor boundary, so legacy text presents as paragraphs when editing and the plain-text shape is preserved for content that should stay that way. It depends on core `editor` and targets `^9.3 || ^10 || ^11`. The judgement to make is whether conversion at edit time is what you want or whether a one-off migration is: converting on the fly keeps the stored data as it was, which is safer and means the site keeps depending on the module; converting once with a migration produces clean HTML and lets you remove the dependency. For a site actively editing legacy content the first is pragmatic; for one that has finished migrating, the second is tidier.

---

- Edit legacy plain-text content in CKEditor.
- Preserve paragraph breaks from migrated text.
- Avoid a diff on every migrated node.
- Convert newlines to paragraphs for editing.
- Keep plain-text content readable.
- Bridge content predating a WYSIWYG editor.
- Edit imported text without reformatting.
- Support a phased content migration.
- Handle text from a legacy CMS.
- Avoid manually reformatting old articles.
- Keep stored data unchanged.
- Edit newline-formatted content safely.
- Support a "convert line breaks" text format.
- Reduce migration cleanup work.
- Handle plain-text imports from a feed.
- Edit content authored in a text editor.
- Preserve formatting on save.
- Ease adoption of CKEditor on an old site.
