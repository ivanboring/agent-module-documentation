<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
CKEditor 5 Show Blocks outlines the block-level elements in the editing area and labels each with its tag name, so an editor can see the structure of what they are writing.

---

A WYSIWYG shows what text looks like and hides what it is, and the gap between those causes most of the markup problems on a content-managed site. A heading that is a paragraph in bold at 18 points looks like a heading and is not one — so it does not appear in a table of contents, is skipped by a screen reader navigating by heading, and carries no weight for search. An empty paragraph used as a spacer is invisible until the design changes. Nested lists that look right are often two separate lists. A blockquote that is really an indented paragraph loses its meaning entirely. Turning on element outlines makes all of that visible in the editor, which is the only place it can be fixed cheaply. Version **1.1.1** on core `^10 || ^11`. The reason to reach for it is usually **accessibility remediation**, and it is unusually effective there because it converts an abstract audit finding — "heading levels are used inconsistently" — into something an editor can see and correct on the page they are editing, without learning what a heading level is. Two practical notes. **It is a view mode rather than a setting to leave on**, since the outlines take space and distract from writing, so its value is in being available when structure is in question rather than always on. And **it shows structure, not correctness**: an `h3` following an `h1` is visible as an `h3`, and whether that is a skipped level is still a judgement the editor has to make — which is why the module pairs naturally with an accessibility checker rather than replacing one.

---

- See the structure of edited content.
- Find a fake heading in an article.
- Spot empty paragraphs used as spacers.
- Check heading hierarchy while editing.
- Fix accessibility audit findings.
- See where a blockquote really is.
- Debug nested list markup.
- Train editors on semantic structure.
- Check a migrated article's markup.
- Find stray div elements in content.
- Improve heading usage across a site.
- See table structure in the editor.
- Fix content copied from Word.
- Check a page's document outline.
- Support an accessibility remediation programme.
- Verify list nesting.
- Teach editors about semantics.
- Inspect structure before publishing.
