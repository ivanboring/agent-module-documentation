<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Views Combine (views_combine) — agent index

Joins several views into one display, merging at the **views** level rather than in SQL.
Depends on core `views`. Core requirement `^10 || ^11`.
**Release is 1.0.0-alpha5 — alpha.**

Key facts:
- **Compare `views_display_union` (wave 63):** that performs a SQL `UNION` — efficient, but the
  constituents must produce compatible column sets. This executes each view and merges results —
  more permissive (different base tables, different shapes) at the cost of separate queries.
  Choose by whether the sources are structurally similar (UNION) or genuinely heterogeneous (this).
- Surface: `src/ViewsCombiner.php`, `views_combine.module`, `config/schema`. No routes or
  permissions.
- **Verify two things on any combined listing:** that each constituent view applies its own
  access — a merged listing is only as safe as its least careful component — and that **paging**
  behaves across the merged set.
- Ships a `.tugboat/config.yml`, so upstream maintains a demo environment.
