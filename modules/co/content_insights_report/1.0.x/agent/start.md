<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Content Insights Report (content_insights_report) — agent index

Analyses site content and produces a **report**. Version **1.0.11**. Core `^10 || ^11`.
No dependencies.

Turns a week of spreadsheet work into a page — what is here, how old, who owns it, what nobody has
touched, where the thin pages are.

**The value is what it prompts, not the numbers.** Generate it when someone has the authority and
time to act; otherwise it is a slower way of not doing the audit.

**Two practical points:** analysing all content is expensive — check whether it batches before
running on production; and the report **aggregates content the reader may not otherwise access**,
so who can view it is an access decision.