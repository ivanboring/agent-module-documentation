<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Search API Fusion adds a connector that points Search API Solr at Lucidworks Fusion rather than a plain Solr server, and adds a click-signals endpoint so user interactions can feed Fusion's relevance model.

---

Fusion is Lucidworks' commercial platform built on top of Solr — it speaks the Solr API but adds a signals pipeline, machine-learned ranking and query rewriting on top. Search API Solr talks to Solr; this module supplies the connector that makes "the Solr server" a Fusion instance instead, so an existing Search API index configuration keeps working while gaining Fusion's features.

The distinctive piece is signals. Fusion improves ranking by learning from behaviour — which result a user clicked for which query — and this module exposes a route, `search_api_fusion/signals/click/{search_api_server}`, that records those click signals against a configured Fusion server. That endpoint is gated by a dedicated permission, `send signals to any fusion server`, rather than a generic one, which is the right shape: sending signals is a distinct capability a site grants deliberately, not something every authenticated user should do by default.

It only makes sense on a site that actually runs Fusion — it is a connector to a specific commercial product, not a general Solr enhancement. If the search backend is plain Solr, this module has nothing to connect to. Because it is a Search API Solr connector, it depends on `search_api_solr` and slots into that module's server configuration.

---

- Point Search API Solr at Lucidworks Fusion.
- Use Fusion instead of plain Solr.
- Feed click signals to Fusion.
- Improve ranking from user behaviour.
- Keep existing Search API indexes on Fusion.
- Send a click signal for a query result.
- Gate signal-sending behind a permission.
- Grant signal access deliberately.
- Use Fusion's machine-learned ranking.
- Connect an existing site to Fusion.
- Configure Fusion as a Search API server.
- Record which result a user clicked.
- Improve relevance over time.
- Restrict who can send signals.
- Keep Solr config while adding Fusion.
- Adopt only when running Fusion.
- Integrate Fusion query rewriting.
- Route signals to a specific Fusion server.
- Depend on search_api_solr.
- Enhance a commercial search deployment.