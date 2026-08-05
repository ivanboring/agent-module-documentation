<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Date Pager (date_pager) — agent index

Views **pager plugin** that moves through **time periods** (next month, previous week) instead of
numbered pages. Depends on core `views`; test dependency on `smart_date`, so it is expected to
work with those fields as well as core's. Version **2.1.2**. Core requirement `^10 || ^11`.

**Why it beats a numbered pager for date-organised content:** it gives a **stable URL per period**
(`?month=2026-09` rather than `?page=2`). A numbered page changes meaning whenever content is
added; a month does not — which is what makes the page linkable, bookmarkable and indexable.

**Two design points:**
1. **Empty periods need a decision.** A month with no events can render an empty page with working
   navigation, or the pager can skip to the next period with content. First is predictable, second
   is friendlier; getting it wrong yields either dead pages or navigation that jumps.
2. **The query shape changes.** Paging by date is a **range condition**, not an `OFFSET` — usually
   faster on a well-indexed date column than a large offset, but the date field **needs an index**
   on a large content set.
