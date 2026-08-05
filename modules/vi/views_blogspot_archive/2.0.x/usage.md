<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Views Blogspot Archive renders a view as a collapsible year-and-month archive tree, the navigation pattern Blogspot popularised and blogs have used ever since.

---

An archive of a thousand posts needs navigation that is neither a thousand links nor a hundred pages of pagination, and the year/month tree is the pattern that solved it: years collapsed, one expanded, months beneath it, counts beside each. It works because it matches how people remember dated content — roughly when, not exactly which — and because it is compact enough to sit in a sidebar on every page. This module supplies it as a Views **style plugin**, which is the right layer since the style governs how the whole result set is wrapped, and it means the archive inherits the view's filters, its access checking and its language handling rather than reimplementing them. Version **2.0.2** on core `^10 || ^11`, depending on core `views`. Three things determine whether the result is good. **The counts are the point** — an archive without them tells the visitor nothing about where the content is — and they mean a grouped count query, so on a large archive check what it costs and whether the block is cached. **Timezone decides which month a post falls in**, and a post published at 23:30 on the 31st belongs to different months depending on whose timezone is used, which matters for anyone reconciling an archive against a report. And **the archive is a per-page block that varies by very little**, so it should be cached hard with a tag invalidated on node save, rather than rebuilt on every request — this is one of the classic quiet performance costs in a sidebar.

---

- Build a blog archive by year and month.
- Add archive navigation to a sidebar.
- Show post counts per month.
- Navigate a large news archive.
- Add a collapsible year tree.
- Browse historical content.
- Build a newsletter archive.
- Navigate meeting minutes by date.
- Add a classic blog archive widget.
- Browse a publications history.
- Show an events archive.
- Navigate a press release archive.
- Add a date-based sidebar block.
- Browse a long-running blog.
- Show content volume over time.
- Navigate an annual report archive.
- Build a diary archive.
- Add archive links to a footer.
