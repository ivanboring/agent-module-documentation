<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Simple GSE Search puts a Google Programmable Search Engine (formerly Custom Search) on the site, so search results come from Google's index rather than from Drupal's own.

---

There is a real case for this. Drupal's core search is weak, and Search API with a Solr backend is a substantial piece of infrastructure to run for a small site — whereas Google has already crawled the site, handles relevance and typo tolerance well, and needs no indexing pipeline at all. The module provides the integration: a settings form at `/admin/config/search/simple_gse_search` behind `administer gse search`, a results controller, and a second permission `access gse search page` gating the results page itself. The route to notice is that it claims **`/search`** — core's search path — so on a site with core Search enabled the two collide and one must be disabled or moved. Dependencies are core only, with a wide `^8.8 || ^9 || ^10 || ^11`. Three constraints belong in any recommendation: results are limited to **what Google has indexed**, so new, unpublished or access-restricted content will not appear and content behind a login never will; the free Programmable Search tier displays Google branding and has query limits, with the paid tier billed per thousand queries; and search terms are sent to Google, which is a data-flow to note in a privacy assessment on a site whose search queries could be sensitive.

---

- Add site search without running Search API.
- Use Google's relevance ranking.
- Give a small site usable search cheaply.
- Avoid running a Solr instance.
- Get typo tolerance without configuration.
- Search across several related domains.
- Replace core search on a brochure site.
- Provide search on a static-ish site.
- Show results in a themed Drupal page.
- Restrict access to the search page.
- Configure the search engine id centrally.
- Reduce infrastructure for a small site.
- Search PDF content Google has indexed.
- Provide search during a migration.
- Add search to a documentation site.
- Use an existing Programmable Search Engine.
- Give editors no indexing to manage.
- Search a site with limited hosting.
