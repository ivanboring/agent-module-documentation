<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Cludo Search — agent index

Integrates the **Cludo hosted (SaaS) search** service — queries go to Cludo's API and Cludo's crawler
indexes the site, instead of a local Search API/Solr index. Provides config (customer/engine IDs, API
credentials) + a search interface/block. Version **2.0.0**. Core `^8||^9||^10||^11`.

Store Cludo credentials as secrets; note query terms are sent to Cludo. Provides admin permissions.
Trade-off: less infra, but a dependency on Cludo availability/data handling.
