<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Search API Meilisearch (search_api_meilisearch) — agent index

**Meilisearch** backend for Search API, plus `search_api_meilisearch_autocomplete` and
`search_api_meilisearch_facets`. Depends on `search_api`. Version **2.1.0**.
Core requirement `^9.3 || ^10 || ^11`.

**Why it is interesting against Solr/Elasticsearch:** a single Rust binary, no JVM, gigabytes less
memory, and **typo tolerance and prefix search on by default** rather than configured in — which is
exactly the behaviour users expect and the hardest thing to get right on Solr.

**Three things to establish before committing:**
1. **Facets and complex filtering** are where lighter engines historically fall short of Solr.
   Test the site's **actual** facet set, not a simple keyword query.
2. **Scale.** Meilisearch is designed to hold its index **in memory** — the source of its speed,
   and the reason a very large corpus becomes an infrastructure question.
3. **Access.** The Meilisearch server **must not be internet-reachable**, and Drupal should use a
   **scoped search key, not the master key**. This is the standard mistake with every search
   server and the reason exposed instances turn up in scans.
