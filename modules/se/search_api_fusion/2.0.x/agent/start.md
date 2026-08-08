<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Search API Fusion (search_api_fusion) — agent index

Connector pointing **Search API Solr** at **Lucidworks Fusion**, plus a click-**signals** endpoint.
Version **dev-2.0.x**. Core `^10.1 || ^11`. Depends on `search_api_solr`.
Only useful on a site actually running Fusion (a commercial Solr platform).

Signals route: `search_api_fusion/signals/click/{search_api_server}`, gated by the dedicated
permission **`send signals to any fusion server`** (not a generic one — grant deliberately).
Feeds Fusion's behavioural ranking with which result was clicked for which query.

Slots into `search_api_solr`'s server configuration; existing indexes keep working.