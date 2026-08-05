<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Date Pager is a Views pager that moves through time — next month, previous week — instead of through numbered pages of results.

---

For date-organised content, numbered paging is the wrong metaphor. Nobody asks for page 3 of an events listing; they ask for next month. A date pager makes the unit of navigation a period, so the view shows what falls in it and the links move to the adjacent one, which gives a stable URL per period — `?month=2026-09` rather than `?page=2` — and that stability is what makes the page linkable, bookmarkable and indexable. A numbered page changes meaning every time content is added; a month does not. This is the plugin for that, depending on core `views`, version **2.1.2** on `^10 || ^11`, with a test dependency on `smart_date` indicating it is expected to work alongside that module's fields as well as core's. Two design points. **Empty periods need a decision**: a month with no events can render an empty page with working navigation, or the pager can skip to the next period that has content — the first is predictable, the second is friendlier, and getting it wrong produces either dead pages or navigation that jumps unpredictably. And **the query is different from a numbered pager's**: paging by date means a range condition rather than an offset, which is usually faster on a well-indexed date column than a large `OFFSET`, but it does mean the date field needs an index if the content set is big.

---

- Page an events listing by month.
- Navigate an archive by year.
- Move week by week through a calendar.
- Give each month a stable URL.
- Make an archive indexable.
- Replace numbered paging on a blog.
- Browse a news archive by period.
- Show this week's schedule.
- Link directly to a month's events.
- Page a programme by day.
- Navigate historical records by year.
- Bookmark a specific period.
- Show a rota by week.
- Browse meeting minutes by month.
- Page a publications list by year.
- Show a season's fixtures.
- Navigate a diary.
- Improve SEO for an archive.
