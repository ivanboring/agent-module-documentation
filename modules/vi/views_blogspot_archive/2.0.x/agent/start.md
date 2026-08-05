<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Views Blogspot Archive (views_blogspot_archive) — agent index

Views **style plugin** rendering results as a collapsible **year/month archive tree** with counts.
Depends on core `views`. Version **2.0.2**. Core requirement `^10 || ^11`.

**Why a style plugin is the right layer:** it governs how the whole result set is wrapped, so the
archive inherits the view's **filters, access checking and language handling** rather than
reimplementing them.

**Three things determine whether the result is good:**
1. **The counts are the point** — an archive without them tells the visitor nothing about where the
   content is. They mean a **grouped count query**; on a large archive, check what it costs.
2. **Timezone decides which month a post falls in.** A post published at 23:30 on the 31st belongs
   to different months depending on whose timezone is used — matters for anyone reconciling the
   archive against a report.
3. **It is a sidebar block that varies by very little**, so cache it hard with a tag invalidated on
   node save rather than rebuilding per request. This is one of the classic quiet performance costs
   in a sidebar.
