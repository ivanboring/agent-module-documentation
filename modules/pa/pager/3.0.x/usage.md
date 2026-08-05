<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Pager provides a block with previous/next navigation between individual pieces of content, rather than the numbered paging of a listing.

---

Two different things share the word "pager" and confusing them wastes time. Views' pager moves through **pages of a list**; this moves through **items in a sequence** — the previous and next article, the next chapter of a document, the following item in a collection. That kind of navigation keeps a reader moving through a body of content instead of returning to an index between each item, which is why every documentation site, book-like structure and serialised archive has it. Version **3.0.1** on core `^9.3 || ^10 || ^11`, configured at its own admin route behind `administer pager`, and note the **unusually wide dependency list** — `block`, `filter`, `node`, `system`, `taxonomy`, `text` and `user` — which suggests the sequence can be derived from several different orderings rather than only from creation date. Two things determine whether the result is right. **What defines the sequence** is the whole design: creation date, a weight field, taxonomy order and menu order each give a different "next", and the one that matches the reader's mental model is usually the one the page's own navigation implies. And **sequence links are per-item and cacheable**, so a block showing the next article must vary by the current item and be invalidated when a neighbouring item is added, unpublished or reordered — otherwise it points at content that has moved or disappeared, which is a broken link the site will not notice.

---

- Add previous/next links to articles.
- Navigate chapters of a document.
- Move through a serialised archive.
- Link to the next item in a collection.
- Keep readers moving through content.
- Add sequence navigation to a book.
- Navigate a series of tutorials.
- Link between related news items.
- Add next-article links to a blog.
- Navigate a photo essay's parts.
- Move through a taxonomy's content.
- Add navigation to a documentation set.
- Link through a course's lessons.
- Navigate a report's sections.
- Add a previous link to a page.
- Move through a product range.
- Support a reading sequence.
- Reduce returns to the index page.
