<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Search API Typesense (search_api_typesense) — agent index

**Typesense** backend for Search API, with synonym management.
Version **1.1.2**. Core `>10.3 || ^11`. Depends on `search_api`.
Permission: `administer search_api_typesense synonyms`.

Positioning: typo-tolerant and instant-search out of the box, far smaller operational footprint
than Elasticsearch, self-hostable — the middle between running Solr and paying for SaaS. Being a
Search API backend, indexes, processors, Views and facets are unchanged and switching later is
configuration.

**The separate synonyms permission is the right separation** — synonyms are where search quality
actually improves (users search for words your content does not use), and that belongs to whoever
understands the content, not whoever administers the server.

**Two operational points:** the Typesense API key is an index-write credential — keep it out of
config exports; and decide what search does when Typesense is unreachable (a search page that
fatals is worse than one that degrades).