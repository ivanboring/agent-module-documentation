<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Search API Meilisearch adds Meilisearch as a Search API backend, with submodules for autocomplete and facets.

---

The Search API backend choice has been Solr or Elasticsearch for a decade, and both are capable and heavy — a JVM, a schema, a memory allocation measured in gigabytes and an operational burden that a small team feels. Meilisearch is the newer, lighter option: a single Rust binary with no JVM, sensible defaults, and typo tolerance and prefix search turned on by default rather than configured in — which is a real difference, because "search as you type, forgive my spelling" is the behaviour users now expect and the one that takes the most work to get right on Solr. This module supplies the Search API integration, with `search_api_meilisearch_autocomplete` and `search_api_meilisearch_facets` covering the two features a site notices immediately if they are missing. Version **2.1.0** on core `^9.3 || ^10 || ^11`, depending on `search_api`. Three things to establish before committing. **Facets and complex filtering** are where lighter engines historically fall short of Solr, so test the site's actual facet set rather than a simple keyword query. **Scale**: Meilisearch is designed to hold its index in memory, which is what makes it fast and what makes a very large corpus an infrastructure question rather than a configuration one. And **access**: the Meilisearch server must not be reachable from the internet, and the API key used by Drupal should be a scoped search key rather than the master key — the standard mistake with every search server, and the reason exposed instances turn up in scans.

---

- Add search to a site without running Solr.
- Get typo-tolerant search by default.
- Add search-as-you-type.
- Replace a heavy search stack.
- Reduce search infrastructure cost.
- Add faceted search on a small site.
- Improve search on a documentation site.
- Index a product catalogue.
- Add autocomplete to a search box.
- Run search on a single small server.
- Improve relevance without tuning.
- Support a fast product finder.
- Add search to a decoupled front end.
- Replace core search with something better.
- Reduce operational burden of search.
- Index multilingual content.
- Improve search on a knowledge base.
- Prototype search quickly.
