<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Created Date Views Filters (created_date_views_filters) — agent index

Views filters on a node's **creation date expressed as named periods** (this month, last year)
rather than raw timestamp comparisons. Depends on core `views`. No configuration outside the Views
UI. Version **1.0.6**. Core requirement `^8 || ^9 || ^10 || ^11`.

**The problem with the core filter:** it is an operator plus a value, so a date filter is either an
**absolute timestamp that goes stale** the moment it is saved, or an **offset expression** the site
builder must get right. "This month" is not "created after 1 August" — that is *this particular*
August, and next month the view is wrong. Views' relative-date syntax can express it, but the
failure is **silent**: a view quietly returning nothing (or everything) is far harder to notice
than one that errors.

**Two points:**
1. **Period boundaries are a timezone question.** "This month" begins at midnight in *someone's*
   timezone — site default, user setting and UTC give three different answers. Establish which
   before trusting a report built on it.
2. **Relative filters interact with caching.** A view whose result changes at midnight needs cache
   metadata that expires then, or it serves yesterday's answer — the "dashboard was wrong on Monday
   morning" bug.
