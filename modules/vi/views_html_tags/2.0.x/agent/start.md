<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Views HTML Tags (views_html_tags) — agent index

Widens the element list in a Views field's **"Customize field HTML" / "wrapper HTML"** settings.
Depends on core `views`. Own settings page behind `administer views html tags`.
Version **2.0.3**. Core requirement `^10.3 || ^11`.

**What core omits:** `article`, `section`, `time`, `address`, `figure`/`figcaption`, `mark`, `abbr`,
`dl`/`dt`/`dd` — most of what a semantic listing wants. Without them the choice is a meaningless
`div` with a class, or a template override per view.

**Why it matters beyond tidiness:** semantic elements are what **assistive technology and search
engines read**. `<time datetime="…">` is a machine-parsable date; a `div` containing "12 March" is
a string. `<article>` marks a self-contained item; a `div` marks nothing.

**The matching caveat: an element used wrongly is worse than a neutral one.** A screen reader
announcing a *heading* that is not a heading, or a *list* whose items are not list items, actively
misleads. Widening the palette raises the chance of both outcomes — the choice needs someone who
knows what the elements mean.
