<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Wysiwyg Linebreaks (wysiwyg_linebreaks) — agent index

Converts newline-separated legacy text to HTML paragraphs at the **editor boundary**, and back.
Depends on core `editor`. Core requirement `^9.3 || ^10 || ^11`.

Key facts:
- **The problem:** migrated content stored as plain text with meaningful blank lines opens in
  CKEditor as one undifferentiated block (the editor sees no `<p>` tags), and CKEditor then
  rewrites it on save — producing a diff across every migrated node.
- **The judgement to make:** convert at edit time (stored data unchanged, dependency permanent) or
  convert once with a migration (clean HTML, dependency removable). For a site actively editing
  legacy content the first is pragmatic; for one that has finished migrating, the second is
  tidier. Say which applies rather than defaulting.
- Works with a "convert line breaks" text format on the display side — check the format's filter
  order so display and editing agree.
- No routes, permissions or configuration.
