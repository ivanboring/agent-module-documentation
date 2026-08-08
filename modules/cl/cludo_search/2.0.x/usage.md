<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Cludo Search provides a search interface backed by the Cludo hosted search service, letting a Drupal site use Cludo's SaaS crawler and search API instead of an on-site index.

---

Cludo Search connects a Drupal site to Cludo, a hosted (SaaS) site-search product. Instead of
building and querying a local search index, the site sends queries to Cludo's API and renders the
results Cludo returns; Cludo's own crawler indexes the site. The module provides the configuration to
point Drupal at a Cludo account (customer ID, engine ID, API credentials) and a search interface/block
to present Cludo results to visitors.

Use it when search is being outsourced to Cludo for its relevance, analytics and merchandising
features rather than run through Search API/Solr locally. Because it talks to an external service with
account credentials, store the Cludo API key/credentials as secrets and be aware that query terms (and
thus some visitor behaviour) are sent to Cludo. It provides permissions to administer the Cludo
configuration. The trade-off versus a local search backend is the usual SaaS one: less
infrastructure to run, but a dependency on Cludo's availability and data handling.

---

- Add Cludo hosted search to a Drupal site.
- Use Cludo's SaaS crawler instead of a local index.
- Send search queries to the Cludo API.
- Render Cludo search results on the site.
- Configure the Cludo customer and engine IDs.
- Store Cludo API credentials as secrets.
- Present a Cludo-backed search block/page.
- Outsource site search to Cludo.
- Rely on Cludo for relevance and analytics.
- Administer Cludo settings via permission.
- Avoid running a local Solr/Search API index.
- Understand query terms are sent to Cludo.
- Depend on Cludo availability for search.
- Configure Cludo search templates/appearance.
- Integrate Cludo merchandising features.
- Use Cludo analytics for search insights.
- Point Drupal at a Cludo account.
- Handle Cludo API authentication.
- Replace core search with Cludo.
- Trade infrastructure for a SaaS dependency.
