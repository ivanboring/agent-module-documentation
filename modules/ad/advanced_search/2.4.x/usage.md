<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Advanced Search provides an Advanced Search block and related enhancements over Search API, Facets and Search API Solr — a richer search entry point than a bare keyword box.

---

A single search field is fine until users need to narrow by more than words: a content type, a date range, a category. Building that means assembling Facets, a facets summary, and a search form into a coherent block, which is fiddly to wire up consistently. This module packages the Advanced Search block and the enhancements around it so the richer search UI is a component rather than a bespoke assembly.

It sits on a real search stack: it depends on **Facets**, **Facets Summary** and **Search API Solr**, so it is for sites already running Search API against Solr, not a standalone search. That dependency set is the thing to have in place first — the block enhances a Solr-backed Search API index, it does not provide one.

For a content-heavy site where visitors need to filter as much as search, it turns a pile of search-related configuration into a ready block. Confirm the underlying index exposes the facets you want to offer, since the block surfaces what Search API and Facets are configured to provide.

---

- Add an advanced search block.
- Offer faceted narrowing on search.
- Filter search by content type.
- Filter search by category.
- Enhance a Search API search UI.
- Build on Solr-backed search.
- Provide a richer search entry point.
- Combine facets and a search form.
- Summarise active facets.
- Give users filtered search.
- Reuse a packaged search block.
- Search a content-heavy site.
- Avoid assembling facets by hand.
- Depend on Search API Solr.
- Surface configured facets.
- Improve search discoverability.
- Provide advanced search on a portal.
- Narrow results by date.
- Present a facets summary.
- Standardise the search UI.