<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
List.js integrates the List.js library, adding instant client-side search, sorting and filtering to a rendered list, with a `listjs_views` submodule for applying it to views.

---

For a list the visitor already has, filtering in the browser is better than filtering on the server in every way that matters: the result appears as they type rather than after a request, there is no page reload, no cache to invalidate and no query to run. A staff directory of two hundred people, a list of forty documents, a table of thirty locations, a glossary — each is a case where the whole set is small enough to send once and search instantly. That is a genuine improvement over an exposed Views filter, which costs a round trip per keystroke or a submit button. Version **2.0.1** on core `^10 || ^11`. **The limit is the whole design and it is the thing to get right: this works only when the entire set is on the page.** Client-side filtering searches the DOM, so anything paged, lazy-loaded or truncated is invisible to it — and a search box that silently searches page one of nine is worse than no search box, because the visitor concludes the thing is not there. So the rule is: send the whole list, or use a server-side filter. That in turn bounds the size, since a page carrying two thousand rows is slow to render and heavy on a phone regardless of how fast the filtering is. Two further points. **The filter must be accessible** — an input that changes results needs the result count announced through a live region, or a screen-reader user gets no feedback that anything happened. And **filtered-out rows are still in the DOM**, so browser find-in-page and assistive technology may still reach them unless they are properly hidden.

---

- Add instant search to a staff directory.
- Filter a document list as you type.
- Sort a table client-side.
- Search a glossary instantly.
- Filter a list of locations.
- Add search to a small view.
- Sort a listing without reloading.
- Filter a FAQ list.
- Search a list of resources.
- Add client-side sorting to a table.
- Filter a team page.
- Search a product feature list.
- Add instant filtering to a directory.
- Sort a publications list.
- Filter a list of downloads.
- Search a small catalogue.
- Add a quick filter above a list.
- Sort a comparison table.
