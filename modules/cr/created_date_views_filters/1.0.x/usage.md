<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Created Date Views Filters adds filters on a node's creation date expressed as periods — this month, last year — rather than as raw timestamp comparisons.

---

Views can already filter on `created`, and it does so as an operator plus a value, which means a date filter is either an absolute timestamp that goes stale the moment it is saved, or an offset expression that a site builder has to get right. "Content from this month" is not "created after 1 August" — that is content from *this particular* August, and next month the view is wrong. Views' relative-date syntax can express it, but the syntax is unforgiving and the failure is silent: a view that quietly returns nothing, or returns everything, is much harder to notice than one that errors. Named period filters make the intent explicit and keep it correct as time passes. Version **1.0.6** on `^8` through `^11`, depending on core `views`, with no configuration outside the Views UI. Two points. **Period boundaries are a timezone question** — "this month" begins at midnight in someone's timezone, and on a site with an international audience the site default, the user's setting and UTC give three different answers, so establish which the filter uses before trusting a report built on it. And **relative filters interact with caching**: a view whose result changes at midnight needs cache metadata that expires then, or it will keep serving yesterday's answer, which is exactly the kind of bug that surfaces as "the dashboard was wrong on Monday morning".

---

- Show content created this month.
- List last year's articles.
- Filter a dashboard by period.
- Show this week's submissions.
- Build a monthly report view.
- Avoid stale absolute date filters.
- Show recent content without offsets.
- Filter an archive by year.
- Build a quarterly summary.
- Show today's new content.
- Report on last month's activity.
- Filter a moderation queue by age.
- Show content from the current year.
- Build an editorial activity view.
- Filter by a named period.
- Avoid relative-date syntax mistakes.
- Show submissions since the period start.
- Build a recurring report.
