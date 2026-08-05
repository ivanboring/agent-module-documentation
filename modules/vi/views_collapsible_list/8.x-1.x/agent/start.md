<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Views collapsible lists (views_collapsible_list) — agent index

**Views style plugin** rendering rows as expandable/collapsible items — an accordion built from a
view. Depends on core `views`. Version **8.x-1.6**. Core requirement `^9 || ^10 || ^11`.

A style plugin is the right layer: it governs how the whole result set is wrapped, which is what
an accordion is, and it composes with Views' filtering, sorting, paging, contextual filters and
access.

**The thing to check is the disclosure mechanism** — it separates a good accordion from a bad one:
- **native `<details>`/`<summary>`** gives keyboard operation, screen-reader announcement and
  browser find-in-page for free, and modern browsers can animate it;
- **a JavaScript implementation** must supply `aria-expanded`, a focusable trigger and correct
  state announcement itself — and frequently supplies only the first.

Two related points:
- **Hidden ≠ absent.** JS-hidden content is still in the DOM: rendered, costing query time, and
  findable by browser in-page search.
- **Decide whether the first item opens by default.** A fully closed accordion can read as an
  empty page.
