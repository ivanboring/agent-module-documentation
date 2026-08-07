<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# CKEditor Entity Browser (ckeditor5_entity_browser) — agent index

Adds **entity browser buttons to CKEditor 5's link UI**. Version **3.0.0**. Core `^10 || ^11`.
Depends on `ckeditor5`, `entity_browser`.

Removes the leave-the-editor-and-copy-a-URL trip that produces `/node/123` links, wrong-page links
and pasted staging domains.

**Check what it stores — that is the difference between convenience and correctness.** A browser
inserting the **resolved URL** saves typing; one inserting an **entity reference** means the link
survives a path alias change. Which it does decides whether it belongs in a content-integrity
argument or only an ergonomics one.

Pairs with `node_alias_link_display` (wave 85), which rewrites stored `/node/123` to aliases at
display time — opposite ends of the same problem.