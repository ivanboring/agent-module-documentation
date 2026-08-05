<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
BEF Date filters adds date-specific widgets to Better Exposed Filters, so an exposed date filter can be a date picker or a range selector rather than a text field expecting a particular format.

---

Better Exposed Filters improves the presentation of Views exposed filters — checkboxes instead of a multi-select, links instead of a dropdown — but its widget set is oriented at lists and text. A date filter exposed through plain Views renders as a text input into which a visitor is expected to type something the filter can parse, which is a reliable source of empty result sets. This module adds the date-aware widgets that make an exposed date filter usable: date pickers and range controls appropriate to the filter's operator. It depends on `better_exposed_filters` alone, with `config/schema` for its settings and core `^10 || ^11`. As with any exposed filter, the caching question is worth confirming: exposed input varies the result set, so a page with date filters needs the right cache contexts, and a date range that includes "today" is time-dependent in a way that interacts with cache lifetime — a filtered listing cached for a day will show yesterday's idea of "this week".

---

- Give an exposed date filter a date picker.
- Let visitors pick a date range.
- Stop visitors typing dates in the wrong format.
- Filter events by date visually.
- Improve a news archive's filters.
- Add a from/to range control.
- Filter a calendar listing.
- Reduce empty result sets from bad input.
- Improve mobile date entry.
- Filter by publication date.
- Combine date filters with BEF's other widgets.
- Provide a "next 30 days" style filter.
- Improve an events listing's usability.
- Filter a report by period.
- Make an exposed filter accessible.
- Support a booking availability search.
- Filter by a date range on a field.
- Improve a document archive's search.
