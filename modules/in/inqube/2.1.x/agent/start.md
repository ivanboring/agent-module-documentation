<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Inqube (inqube) — agent index

**Elasticsearch query builder for Views** — the View expresses the query, the DSL is generated.
Version **2.1.7**. Core `^10 || ^11`.

**Two things before choosing it over Search API:** Search API is the **ecosystem** (facets,
processors, other backends, many integrating modules), so this trades that for directness —
reasonable when you need a specific Elasticsearch capability, poor for ordinary search.

And **the cluster becomes a network dependency inside a page render** — decide what a view does when
it is slow or unreachable, and check query caching, since Views caching and search freshness pull
opposite ways.