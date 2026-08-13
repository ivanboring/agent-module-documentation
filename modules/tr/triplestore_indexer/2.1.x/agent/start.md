<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# TripleStore Indexer (triplestore_indexer) — agent index

**Indexes nodes, media, and taxonomy terms as RDF (JSON-LD) into a Blazegraph triplestore on content events.**

- **Version:** 2.1.x
- **Core:** ^8.8 || ^9 || ^10 || ^11 — deps: jsonld, advancedqueue, restui, media, file, node, taxonomy, context
- **Flow:** entity CRUD → Context reaction → AdvancedQueue job (`TriplestoreIndexJob`) → `IndexingService`: authenticated Guzzle GET of `/<type>/<id>?_format=jsonld` → raw cURL POST/PUT/DELETE to `<server_url>/namespace/<namespace>/sparql`.
- **Config route:** `/admin/config/triplestore_indexer/configuration` (`TripleStoreIndexerConfigForm`). Config: `server_url`, `namespace`, `method_of_auth`, `admin_username`, `admin_password`, `advancedqueue_id`, retries.
- **Drush:** `triplestore-indexer:queue_triplestore <queue_id> --csv=file.csv`. Bundled Context + system.action config; optional `rest.resource.*` config.

**Security observations:**
- Config route gated by `_permission: access administration pages` (low-trust) yet it stores credentials and does a **server-side GET to the admin-supplied `server_url`** during validation — SSRF-capable under a weak gate (`TripleStoreIndexerConfigForm.php:200-202`).
- `admin_password` stored **base64-only** (reversible) and echoed into the form HTML as a readonly value (`TripleStoreIndexerConfigForm.php:103-114`, `:260`); `jwt_token` stored plaintext.
- Outbound cURL keeps TLS verification (no `verify=>false`), but the form only **warns** and still saves on cURL errno 60 (bad cert) (`:209-214`).
- No SPARQL injection (URIs are int-id/machine-name + urlencoded); no exec/unserialize/hardcoded secrets.
- Shipped optional `rest.resource.*` config opens POST/DELETE/PATCH on core entities if installed with basic_auth/jwt.

See [api/indexing.md](api/indexing.md)
