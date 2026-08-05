<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Views Combine joins several views into a single display, so a listing can draw rows from queries that have nothing structurally in common.

---

This is the same territory as `views_display_union` (wave 63), and the distinction is worth keeping straight because they solve it differently. That module performs a SQL `UNION`, which is efficient and requires the constituent queries to produce compatible column sets. This one combines at the **views** level — `ViewsCombiner` executes the constituent views and merges their results — which is more permissive about what can be combined, since the views need not share a base table or column shape, at the cost of running each query separately rather than as one. Which is right depends on the case: a UNION for structurally similar queries over large data, this for genuinely heterogeneous sources or where the constituent views already exist and are configured differently. The module is small (`views_combine.module`, `src/ViewsCombiner.php`, `config/schema`), depends on core `views` alone, and is at **1.0.0-alpha5**. As with any combining approach, verify that each constituent view applies its own access — a merged listing is only as safe as its least careful component — and paging across merged result sets is the other thing to test.

---

- Merge two unrelated views into one listing.
- Combine content and users in one display.
- Build an activity feed from several sources.
- Join views with different base tables.
- Reuse existing views as inputs.
- Show mixed results on one page.
- Avoid rewriting two views as one query.
- Combine a Views listing with a search result set.
- Build a unified dashboard listing.
- Merge results from different filters.
- Show recent items across entity types.
- Combine views configured by different teams.
- Build a cross-section listing.
- Aggregate several sources for a feed.
- Show related items from multiple views.
- Merge a curated list with a dynamic one.
- Build a mixed-type results page.
- Combine views without SQL.
