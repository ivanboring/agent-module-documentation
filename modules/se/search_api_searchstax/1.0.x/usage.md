<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Search API SearchStax connects Drupal's Search API to SearchStax, a managed Solr hosting service, so a site gets Solr search without running Solr.

---

Solr is the standard backend for serious Drupal search — faceting, relevance tuning, language handling — and running it means an additional service to install, secure, monitor, back up and upgrade. Managed hosting removes that operational burden, and SearchStax is one of the providers in that space. This module supplies the Search API integration for it. Requirements are `search_api` and core `^10 || ^11`. Three practical points belong with any hosted-search recommendation. The **credentials** are a live secret and belong in an environment variable rather than exported configuration, following this repo's convention. The **index contents leave the site** — SearchStax holds a copy of whatever is indexed, which for a site with unpublished or restricted content is a data-processing question, and Search API's own access handling is what determines whether restricted content is queryable by the wrong person. And there is a **cost and lock-in** dimension: managed Solr is billed, and index configuration built against a provider's specifics is work to move, so it is worth confirming the alternative — self-hosted Solr via `search_api_solr` — has genuinely been ruled out rather than assumed away.

---

- Add Solr search without running Solr.
- Use managed search hosting.
- Get faceted search on a small team.
- Avoid operating a search server.
- Scale search independently of the site.
- Support multilingual search analysis.
- Improve relevance over database search.
- Offload search load from the web server.
- Support a large content index.
- Get search high availability.
- Reduce operational burden.
- Index content on cron.
- Support faceted browsing.
- Improve search on a content-heavy site.
- Replace core search with Solr features.
- Support a site without a devops team.
- Use provider-managed Solr upgrades.
- Add search to a decoupled front end.
