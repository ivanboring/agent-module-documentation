<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Pager (pager) — agent index

Block with **previous/next navigation between individual items**. Configure at `/admin/…/pager`
behind `administer pager`. Version **3.0.1**. Core requirement `^9.3 || ^10 || ^11`.

**Do not confuse the two meanings of "pager":**
- **Views' pager** moves through *pages of a list*;
- **this** moves through *items in a sequence* — previous/next article, next chapter, following
  item in a collection.

**Note the unusually wide dependency list** — `block`, `filter`, `node`, `system`, `taxonomy`,
`text`, `user` — which suggests the sequence can be derived from several orderings, not only
creation date.

**Two things decide whether the result is right:**
1. **What defines the sequence** is the whole design. Creation date, a weight field, taxonomy order
   and menu order each give a different "next" — the right one usually matches what the page's own
   navigation implies.
2. **Sequence links are per-item and cacheable.** The block must vary by the current item and be
   invalidated when a neighbour is added, unpublished or reordered. Otherwise it points at content
   that moved or vanished — a broken link the site will never notice.
