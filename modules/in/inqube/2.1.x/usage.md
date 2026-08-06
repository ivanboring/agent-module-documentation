<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Inqube provides an easier way to build Elasticsearch queries from Views.

---

Elasticsearch's query DSL is powerful and verbose, and reaching it from Drupal usually means either Search API's abstraction — which covers the common cases and hides the rest — or hand-written queries in a custom module, which puts search logic somewhere site builders cannot see.

A Views query builder is the middle: the View expresses the query, so filters, sorts, arguments and the display all stay in configuration, and the Elasticsearch specifics are generated rather than typed.

**Two things to know before choosing it over Search API.** Search API is the ecosystem — facets, processors, other backends, and a large body of modules that integrate with it — so a bespoke query builder trades that ecosystem for directness. That is a reasonable trade when the requirement is a specific Elasticsearch capability Search API does not expose, and a poor one when the requirement is ordinary search.

And **an Elasticsearch cluster reached from Views is a network dependency in a page render.** Decide what a view does when the cluster is slow or unreachable — an unhandled failure on a search page is worse than an empty result set — and check whether queries are cached, because Views caching and search freshness pull in opposite directions.

---

- Build an Elasticsearch query from a View.
- Keep search logic in configuration.
- Expose filters and sorts to site builders.
- Reach an Elasticsearch capability directly.
- Avoid hand-written queries in a module.
- Compare with Search API's abstraction.
- Weigh losing the Search API ecosystem.
- Decide behaviour when the cluster is down.
- Avoid an unhandled failure on a search page.
- Check query caching against freshness.
- Use Views arguments in a search query.
- Display Elasticsearch results in a View.
- Audit which views query Elasticsearch.
- Plan a search architecture.
- Document this module's behaviour for the team.
- Review it during a site audit.
- Verify its assumptions after an upgrade.
