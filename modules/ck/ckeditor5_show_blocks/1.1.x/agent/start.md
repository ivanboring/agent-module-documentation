<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# CKEditor 5 Show Blocks (ckeditor5_show_blocks) — agent index

Outlines **block-level elements** in the editing area and labels each with its tag name.
Version **1.1.1**. Core requirement `^10 || ^11`.

**The gap it closes:** a WYSIWYG shows what text **looks like** and hides what it **is** — which is
where most markup problems on a content-managed site come from:
- a "heading" that is a **bold 18pt paragraph** — absent from tables of contents, skipped by
  screen-reader heading navigation, worth nothing to search;
- **empty paragraphs as spacers**, invisible until the design changes;
- nested lists that are really **two separate lists**;
- a blockquote that is an **indented paragraph** and has lost its meaning.

**Why it is unusually effective for accessibility remediation:** it converts an abstract audit
finding — *"heading levels are used inconsistently"* — into something an editor can **see and
correct on the page they are editing**, without first learning what a heading level is.

**Two practical notes:**
- **It is a view mode, not a setting to leave on** — the outlines take space and distract from
  writing. Its value is being **available when structure is in question**.
- **It shows structure, not correctness.** An `h3` after an `h1` is visible as an `h3`; whether that
  is a skipped level remains the editor's judgement. Pairs naturally with an accessibility checker
  rather than replacing one.
