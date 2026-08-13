<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# TripleStore Indexer — indexing pipeline & API

## Data path
1. Entity insert/update/delete → `triplestore_indexer.module` hooks → `TriplestoreContextUtils` executes the matching Context **reaction** (index or delete).
2. `queue_process()` builds an AdvancedQueue payload (entity id, type, action) and enqueues a `triplestore_index_job`.
3. Queue worker `Plugin/AdvancedQueue/JobType/TriplestoreIndexJob` dispatches to `IndexingService`.
4. `IndexingService::serialization()` does an **authenticated Guzzle GET** of the entity's JSON-LD: `GET /<type>/<id>?_format=jsonld` (jsonld module), using `admin_username`/`admin_password` from config.
5. `IndexingService::post()/put()/delete()` use **raw cURL** to `<server_url>/namespace/<namespace>/sparql` to write/remove triples. `delete()` targets `<base_url/<type>/<id>>` via `urlencode()`.

## Configuration (`/admin/config/triplestore_indexer/configuration`)
Keys (schema): `server_url` (e.g. `http://localhost:8080/blazegraph`), `namespace`, `method_of_auth`, `admin_username`, `admin_password`, `aqj_max_retries`, `aqj_retry_delay`, `advancedqueue_id`. Route permission: `access administration pages`.

## Bulk / Drush
- `drush triplestore-indexer:queue_triplestore <queue_id> --csv=file.csv` — CSV col0 = entity id, col1 = action (`index_node`/`delete_node`/`index_media`/…); loads entities and enqueues jobs.
- Legacy Drupal Console command `triplestore:indexing` is a stub.

## Bundled config
- 6 `context.context.*` entities (index/delete content, media, taxonomy) with `conditions: {}` → **all content by default**.
- 6 `system.action.*` (index/delete node/media/term via advancedqueue).
- Optional `config/optional/rest.resource.entity.{node,media,taxonomy_term,file}` — enable REST with formats `[jsonld, json]`, auth `[jwt_auth, basic_auth, cookie]`, methods GET/POST/DELETE/PATCH. Installing these **opens REST write methods** on core entities (gated by core REST permissions).

## Security notes for operators
- **Under-gated admin form:** `access administration pages` protects a form that stores credentials and (on validate) fetches the admin-supplied `server_url` server-side (SSRF-capable) — `TripleStoreIndexerConfigForm.php:200-202`. Consider restricting the route to `administer site configuration`.
- **Credentials at rest:** `admin_password` is base64-only (reversible) and echoed into the form as a readonly value (`:103-114`, `:260`); prefer a Key entity / env var if adapting.
- **TLS:** outbound cURL keeps verification (no `verify=>false`), but the form only warns on an invalid cert (errno 60) and still saves (`:209-214`).
- Avoid enabling the optional `rest.resource.*` write methods unless the REST permissions are locked down.
