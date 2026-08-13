<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
TripleStore Indexer keeps a Blazegraph triplestore in sync with Drupal content: it listens to node, media, and taxonomy-term events and pushes each entity's RDF (JSON-LD) representation into the store, so content can be queried as linked data via SPARQL.

---

On entity insert/update/delete the module (via the `context` module's reactions/actions) enqueues an AdvancedQueue job. The queue worker (`TriplestoreIndexJob`) drives `IndexingService`: it first fetches the entity's JSON-LD from the site's own REST endpoint (`GET /<type>/<id>?_format=jsonld`, provided by the `jsonld` module, using authenticated Guzzle requests) and then POSTs, PUTs, or DELETEs it against Blazegraph's SPARQL endpoint (`<server_url>/namespace/<namespace>/sparql`) with raw cURL. The admin config form (`/admin/config/triplestore_indexer/configuration`) sets `server_url`, `namespace`, the auth method, and the admin credentials used to read JSON-LD. Bundled Context entities and system actions wire up index/delete reactions for all content by default, and a Drush command (`triplestore-indexer:queue_triplestore`) can bulk-enqueue entities from a CSV of ids and actions. Optional REST resource config is shipped to expose the JSON-LD the indexer reads.

Several things deserve attention. The config form is gated by `access administration pages` (a relatively low-trust permission) even though it stores credentials and, during validation, performs a server-side GET to the admin-supplied `server_url` — an SSRF-capable fetch under a weak gate (`src/Form/TripleStoreIndexerConfigForm.php:200-202`). The admin password is stored only base64-encoded (reversible, effectively plaintext at rest) and is rendered back into the form HTML as a readonly value (`TripleStoreIndexerConfigForm.php:103-114`, encoded at `:260`). Outbound cURL does not disable TLS (`CURLOPT_SSL_VERIFYPEER` is left at its secure default), but the form only warns — and still saves — on an invalid certificate. Entity URIs sent to SPARQL are integer-id/machine-name based and urlencoded, so there is no user-controlled SPARQL string concatenation. The shipped optional `rest.resource.*` config opens POST/DELETE/PATCH on core entity types if installed with the basic_auth/jwt dependencies present.
---
- Index Drupal nodes into a Blazegraph triplestore as RDF.
- Index media entities as linked data.
- Index taxonomy terms as RDF.
- Keep the triplestore in sync on content insert/update/delete.
- Fetch each entity's JSON-LD from the site's REST endpoint.
- POST entity RDF to a Blazegraph SPARQL namespace.
- Delete an entity's triples when it is removed in Drupal.
- Queue indexing jobs through AdvancedQueue for reliability.
- Bulk-enqueue entities from a CSV with the Drush command.
- Configure the Blazegraph server URL and namespace.
- Choose the authentication method for reading JSON-LD.
- Use Context reactions to control which content is indexed.
- Index all content by default via the bundled Context entities.
- Expose JSON-LD via the optional REST resource config.
- Retry failed indexing jobs with configurable retries/delay.
- Query indexed Drupal content with SPARQL against Blazegraph.
- Build a linked-data / semantic layer over a Drupal site.
- Reindex a set of entities on demand from a CSV manifest.
- Integrate Drupal content into a Fedora/Islandora-style RDF stack.
- Point the indexer at a specific AdvancedQueue queue.
- Trigger index/delete via system actions on entities.
- Maintain RDF for media derivatives alongside nodes.
- Keep taxonomy vocabularies mirrored in the triplestore.
- Feed a downstream SPARQL application from Drupal content.
