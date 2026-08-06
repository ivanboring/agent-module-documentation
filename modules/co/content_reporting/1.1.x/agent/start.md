<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Content Reporting (content_reporting) — agent index

Reports about **the site's own content** — how much, of what types, by whom, changing how — with a
`content_reporting_charts` submodule. Depends on core `node` and `views`.
Version **1.1.0-beta23** — **beta**, and the high beta number suggests a long stabilisation.
Core requirement `^9 || ^10 || ^11`.

**The distinction from web analytics is the useful one:** analytics says **what visitors did**;
content reporting says **what the site has** — the question nobody can answer past a few thousand
nodes, and the one that arises whenever something must be decided about the content as a whole. How
many pages; how many untouched for three years; which content types are actually used; who has
stopped producing; how many nodes lack an image, a summary or a term. **That is the input to a
content audit, a migration scope, a redesign's IA and a retirement programme** — without it those
conversations proceed on impressions.

**Two things worth attaching:**
1. **Counting content is a query problem at the scale where the answer matters.** Several aggregates
   over fifty thousand nodes is a slow page at best — these reports belong **on a schedule with the
   result stored**. Worth checking, because the naive implementation is fine on a development site
   and **times out on production**.
2. **A content report is a report about people as well as content.** *"Who has stopped producing"*
   is a **performance statistic about named individuals** — publishing it to everyone with access to
   the reports section is a decision, not a default.
