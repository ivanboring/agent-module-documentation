<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Views Summary Tabs renders a view's argument summary — the list of available values for a contextual filter — as a row of tabs rather than a list of links.

---

The Views summary is an underused feature. When a contextual filter has no value, a view can show a **summary**: the distinct values that exist, each with a count, each linking to the filtered result. That is how an A–Z glossary works, how an archive by year works, how a "browse by category" page works, and how a faceted starting point works — and Views renders it as an unformatted list of links, which is correct and looks like nothing. Presenting the same data as tabs makes it read as navigation, which is what it is: the visitor is choosing which slice of the listing to see, and a horizontal row of choices above a result set is the pattern every interface uses for that. Version **1.0.1** on core `^10 || ^11`. Two things determine whether it works. **Tab semantics or link semantics — pick one and be consistent.** These are links that navigate, not tabs that switch panels in the page, so they should be marked up as a list of links with the current one indicated by `aria-current`, not with `role="tablist"` and `aria-selected`, which promise in-page panel switching that does not happen. Getting that wrong tells a screen-reader user the page works in a way it does not, which is worse than plain links. And **the number of values decides the presentation**: twenty-six letters fit a row, forty categories do not, and a tab strip that wraps to three lines has become a list of links with extra styling — so check the real data before choosing this over the default.

---

- Show an A–Z glossary as tabs.
- Browse an archive by year in tabs.
- Present categories as a tab row.
- Show a summary as navigation.
- Build a browse-by-letter interface.
- Present a listing's filter values.
- Show counts per category as tabs.
- Build a year-selector for an archive.
- Present a contextual filter's options.
- Show available values above a listing.
- Build a document library's browser.
- Present departments as tabs.
- Show a directory's alphabet navigation.
- Build a publications-by-year view.
- Present event types as a tab row.
- Show a taxonomy summary compactly.
- Build a faceted starting page.
- Present regions as selectable tabs.
