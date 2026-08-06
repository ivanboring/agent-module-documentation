<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Prev Next provides a fast API for the previous and next node relative to a given one.

---

"Previous article / next article" looks trivial and is one of the more expensive things a content site does. Computed live, it is a query ordered by date across the whole content table, filtered by access, run on every article page — and it gets slower as the archive grows, which is exactly the wrong direction.

This module precomputes the relationships and serves them from a lookup, so the cost is constant regardless of how much content exists. The description's emphasis on performance is the point: the feature is not hard, the scale is.

**Two things follow from precomputation and both matter.** The stored relationships must be **maintained** — when a node is created, deleted, unpublished or has its date changed, its neighbours change too, so check that the module updates on all of those and not only on save. And **access is the question a precomputed neighbour cannot answer generically**: if the next node by date is unpublished or access-restricted, the link should skip it, and whether it does depends on whether access is applied at build time or at render time. Test with a restricted node in the sequence before trusting it on a site where content visibility varies.

---

- Add previous/next links to articles.
- Keep neighbour lookup fast as content grows.
- Avoid a whole-table query per page.
- Precompute node relationships.
- Navigate a chronological archive.
- Serve neighbours from a lookup.
- Check relationships update on delete.
- Check relationships update on unpublish.
- Check relationships update on date change.
- Test with a restricted node in the sequence.
- Skip inaccessible neighbours.
- Decide whether access applies at build or render.
- Build a series navigation.
- Audit stale neighbour relationships.
- Rebuild the lookup after a bulk import.
