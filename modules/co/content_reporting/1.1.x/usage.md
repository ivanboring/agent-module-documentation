<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Content Reporting produces reports about a site's own content — how much there is, of what types, by whom, and how it has changed — with a charts submodule for presenting it.

---

The distinction from web analytics is the useful one. Analytics tells an organisation what visitors did; content reporting tells it what it has, which is the question nobody can answer on a site past a few thousand nodes and the one that comes up whenever something has to be decided about the content as a whole. How many pages are there, and how many were last touched more than three years ago. Which content types are actually used and which were created for a requirement that never materialised. Who is producing content and who has stopped. How many nodes have no image, no summary, or no taxonomy. That is the input to a content audit, a migration scope, a redesign's information architecture and a retirement programme, and without it those conversations proceed on impressions. Version **1.1.0-beta23** — a **beta**, and the high beta number suggests a long stabilisation — on `^9 || ^10 || ^11`, depending on core `node` and `views`. Two things worth attaching. **Counting content is a query problem at the scale where the answer matters**: a report over fifty thousand nodes computing several aggregates is a slow page at best, so these reports belong on a schedule with the result stored rather than computed on each view — which is worth checking, because the naive implementation works fine on a development site and times out on production. And **a content report is a report about people as well as content**: "who has stopped producing" is a performance statistic about named individuals, and publishing it to everyone with access to the reports section is a decision rather than a default.

---

- Count content by type.
- Find pages not updated in three years.
- Audit which content types are used.
- Report on content production by author.
- Find nodes with no image.
- Scope a content migration.
- Support a redesign's IA work.
- Identify content for retirement.
- Report on unpublished content volume.
- Chart content growth over time.
- Find content missing a summary.
- Audit taxonomy usage.
- Report on translation coverage.
- Support a content audit.
- Measure editorial output.
- Find orphaned content.
- Report on media usage.
- Support a decommissioning decision.
