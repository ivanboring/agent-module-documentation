<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Content Insights Report analyses a site's content and produces a report on it.

---

Content audits are the thing everyone agrees should happen and nobody does, because doing one by hand on a site with several thousand nodes is a week of spreadsheet work. The questions are always the same — what is here, how old is it, who owns it, what has nobody touched in three years, where are the thin pages — and they are all answerable from data the site already holds.

A report module turns that week into a page.

**The value is entirely in what it prompts, not in the numbers.** A content inventory is the input to decisions: what to retire, what to rewrite, what to consolidate, which content types turned out to be unnecessary. A report nobody acts on is a slower way of not doing the audit, so it is worth generating one at a point where someone has the authority and the time to act.

**Two practical points.** Analysing all content is expensive — expect it to be a batch or cron job rather than a page load on a large site, and check which it is before running it on production. And the report necessarily aggregates content the reader may not otherwise have access to; on a site with restricted content, who can view the report is an access decision rather than a convenience.

---

- Audit a site's content.
- Find content nobody has touched in years.
- Identify thin pages.
- See content counts by type.
- Find out who owns what content.
- Plan a content retirement programme.
- Decide what to rewrite or consolidate.
- Discover unused content types.
- Generate an inventory for a redesign.
- Run the report as a batch job.
- Check the cost on a large site.
- Restrict who can read the report.
- Consider restricted content in aggregates.
- Act on the report rather than filing it.
- Repeat the audit periodically.
