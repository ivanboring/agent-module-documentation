<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Paragraphs Table of Contents builds pages from nested paragraphs and generates a table of contents from their structure.

---

A long document — a policy, a report, a handbook chapter, a guidance page — needs a contents list, and where the contents list comes from decides whether it stays correct. Generating it from body-field headings means parsing markup and depending on editors having used the right heading levels, which they have not. Maintaining it by hand means a list that is right on the day it is written and wrong after the first edit. Generating it from **paragraph structure** removes both problems, because the structure is the data: a section paragraph containing subsection paragraphs *is* the hierarchy, so the contents list is a rendering of it and cannot disagree. Version **8.x-1.4** on `^8` through `^11`, with an unusually wide core dependency list — `block`, `entity_reference_revisions`, `field`, `file`, `image`, `link` — reflecting a module that ships the paragraph types as well as the contents logic. Three things determine whether the result works. **Anchors must be stable**, since a contents entry links to a section and an id derived from changing text breaks every shared deep link — the same trade `auto_anchors` faces. **The contents list is navigation**, so it needs to be a real list of links, keyboard reachable, and marked up so a screen reader can use it to jump — that is the main thing a contents list is for. And **it should reflect access**: a section a visitor may not see must not appear in the contents, or the list becomes an index of what is being withheld.

---

- Build a policy document from paragraphs.
- Generate a contents list automatically.
- Structure a long report.
- Navigate a handbook chapter.
- Keep a contents list in step with content.
- Build a guidance page with sections.
- Add jump links to a long page.
- Structure a manual's sections.
- Generate a sidebar contents panel.
- Build nested document sections.
- Support a legal document's structure.
- Add navigation to an annual report.
- Structure a course's modules.
- Build a knowledge base article.
- Generate anchors from structure.
- Support a long-form editorial page.
- Add a contents list to a specification.
- Structure a procedure document.
