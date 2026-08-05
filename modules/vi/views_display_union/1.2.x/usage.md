<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Views Display Union combines the results of several Views displays into one list with a SQL `UNION`, so a single page can list content that no single query could produce.

---

Views builds one query per display, and that query has one base table. A listing that needs articles *and* events *and* a set of media items — different base tables, different filters, ordered together and paged as one — cannot be expressed that way. The usual workarounds are a view per type rendered in sequence (no combined sorting or paging), Search API (powerful, but a whole indexing stack for what is a query problem), or a custom query. This module adds the fourth option: a display type that takes several other displays and `UNION`s their results, so sorting, paging and the row style apply to the combined set. `src/Plugin` supplies the display and query plugins, `src/Hook` the integration, with `config/schema` for settings; the only dependency is core `views`. `core_version_requirement` is `^10.2 || ^11 || ^12`, already covering Drupal 12. Two things follow from it being a real SQL `UNION`: the constituent displays must produce compatible column sets, and query-level access controls apply per constituent query — worth verifying on a site with node access modules, since a `UNION` is where access assumptions are easiest to get wrong.

---

- List articles and events together in one view.
- Page across results from different base tables.
- Sort a combined list by a shared field.
- Avoid Search API for a simple combined listing.
- Build a unified activity feed.
- Combine content and media in one listing.
- Show recent items across several entity types.
- Produce a single RSS feed from several displays.
- Merge two filtered lists into one.
- Build a "latest across the site" page.
- Combine results without custom SQL.
- Reuse existing displays as inputs.
- Page a combined list correctly.
- Show a mixed-type search results page.
- Aggregate several content sources.
- Build a dashboard listing from several queries.
- Prepare a combined view for Drupal 12.
- Sort a union by date across types.
