<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Search API Typesense makes Typesense available as a Search API backend, including synonym management.

---

Typesense is a typo-tolerant search engine positioned between running Solr yourself and paying for a hosted SaaS: open source, self-hostable, with a much smaller operational footprint than Elasticsearch and typo tolerance and instant-search behaviour out of the box. For a site whose search needs are "fast, forgiving, and not a project in itself", it is a reasonable middle.

Being a Search API backend means the rest of the site does not know: indexes, fields, processors, Views integration and facets all work the way they do with any other backend, and switching later is configuration.

The synonym management is worth noting as a distinct feature with its own permission (`administer search_api_typesense synonyms`). Synonyms are where search quality actually improves on most sites — users search for the word your content does not use — and having them editable by whoever understands the content, rather than by whoever administers the search server, is the right separation.

Two operational points. **The Typesense API key is a credential** with index-write access; keep it out of exported configuration. And **the backend is a network service**, so a site should decide what happens to search when Typesense is unreachable — a search page that fatals is worse than one that degrades to a database fallback.

Core requirement is `>10.3 || ^11`, so this is a current-Drupal module.

---

- Use Typesense as a search backend.
- Get typo-tolerant search.
- Build instant-search behaviour.
- Avoid running Solr or Elasticsearch.
- Keep Search API's fields and processors.
- Use facets with a Typesense index.
- Manage synonyms for a collection.
- Let content editors edit synonyms.
- Separate synonym editing from server administration.
- Keep the Typesense API key out of config exports.
- Plan behaviour when Typesense is unreachable.
- Degrade to a database fallback.
- Switch backends by configuration.
- Index content through Search API.
- Improve results for terms users actually type.
- Audit who may manage synonyms.
