<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Search API SearchStax (search_api_searchstax) — agent index

Search API backend for **SearchStax**-hosted Solr. Depends on `search_api`.
Core requirement `^10 || ^11`.

Three points belong with any hosted-search recommendation:
- **Credentials are a live secret** — environment variable via `ddev dotenv set`, surfaced through
  a Key entity, not exported configuration.
- **Indexed content leaves the site.** SearchStax holds a copy of whatever is indexed. For
  unpublished or access-restricted content that is a data-processing question, and **Search API's
  own access handling** is what decides whether restricted content is queryable by the wrong
  person — verify it rather than assuming the backend enforces anything.
- **Cost and lock-in.** Managed Solr is billed, and index configuration built to a provider's
  specifics is work to move. Confirm self-hosted Solr (`search_api_solr`) has genuinely been ruled
  out rather than assumed away.
