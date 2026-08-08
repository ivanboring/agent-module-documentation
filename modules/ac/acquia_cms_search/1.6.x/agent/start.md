<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# acquia_cms_search — agent index

Part of the **Acquia CMS** distribution (Acquia's Drupal distro). Provides powerful search capabilities to the site Version — see
`acquia_cms_search`'s release. Core `^10.3 || ^11`. Depends on: `acquia_cms_common:acquia_cms_common`, `collapsiblock:collapsiblock`, `facets:facets`, `facets_pretty_paths:facets_pretty_paths`, `drupal:node`, `search_api_autocomplete:search_api_autocomplete`, `drupal:views`, `search_api:search_api_db`.

**Distribution configuration/glue, not a standalone feature.** Right on an Acquia CMS site; a strong
set of assumptions elsewhere. Designed to work with `acquia_cms_common` and the rest of the family.
**Needs a configured Search API index (Solr in the full distribution) — will not enable without it.**