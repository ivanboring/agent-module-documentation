<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# List.js (listjs) — agent index

Integrates the **List.js** library — instant **client-side** search, sort and filter on a rendered
list. Submodule **`listjs_views`** applies it to views. Version **2.0.1**.
Core requirement `^10 || ^11`.

**Why client-side wins for a list you already have:** results appear as the visitor types — no round
trip, no page reload, no cache to invalidate, no query. Better than an exposed Views filter, which
costs a request per keystroke or a submit button.

**The limit is the whole design, and it is the thing to get right: this works only when the entire
set is on the page.** Client-side filtering searches the **DOM**, so anything **paged, lazy-loaded
or truncated is invisible to it** — and **a search box that silently searches page one of nine is
worse than no search box**, because the visitor concludes the item is not there.

So: **send the whole list, or use a server-side filter.** That bounds the size — a page carrying two
thousand rows is slow to render and heavy on a phone however fast the filtering is.

**Two further points:**
- **The filter must be accessible** — an input that changes results needs the **result count
  announced through a live region**, or a screen-reader user gets no feedback.
- **Filtered-out rows are still in the DOM**, so browser find-in-page and assistive technology may
  still reach them unless properly hidden.
