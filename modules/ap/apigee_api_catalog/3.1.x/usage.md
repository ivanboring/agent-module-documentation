<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Apigee API Catalog publishes API documentation to developers: an `apidoc` node type holds an OpenAPI specification — uploaded or fetched from a URL — and renders it as browsable documentation, with re-import tooling to keep it in step with the source.

---

The module models each documented API as a node of type **`apidoc`**, shipped with the fields that make specification handling work: `field_apidoc_spec` (the specification itself), `field_apidoc_spec_file_source` (whether it is uploaded or fetched), `field_apidoc_file_link` (the remote URL when fetched), `field_apidoc_spec_md5` (a checksum of the last-fetched content), `field_apidoc_fetched_timestamp` (when it was last retrieved) and `field_api_product` (the Apigee product it belongs to). `SpecFetcher::fetchSpec(NodeInterface $apidoc)` performs the retrieval over the HTTP client and writes the result through the file system; the MD5 and timestamp fields let the module tell whether a remote spec actually changed. Node hooks do the wiring — `hook_node_presave()`, `hook_node_insert()` and `hook_node_update()` keep the stored spec and its metadata consistent, `hook_form_node_form_alter()` adapts the edit form to the chosen source, and `hook_entity_operation()` adds a **Re-import** operation whose route (`/node/{node}/reimport`) is guarded by a custom access check allowing it only for `apidoc` nodes the user may update. A breadcrumb builder and a 404 subscriber round out the front end. Three experimental submodules extend the catalogue beyond OpenAPI: AsyncAPI, GraphQL and free-form documentation. Being an Apigee product module it is oriented towards Apigee developer portals, though the node type works independently of an Apigee connection.

---

- Publish OpenAPI documentation for your APIs to developers.
- Host an API catalogue on a Drupal developer portal.
- Upload a specification file per API.
- Fetch a specification from a remote URL instead of uploading.
- Re-import a spec when the upstream definition changes.
- Detect unchanged specs with an MD5 checksum.
- Record when each specification was last fetched.
- Associate an API doc with an Apigee API product.
- Give each API its own node with normal Drupal permissions.
- Add editorial content around generated reference docs.
- Document event-driven APIs with the AsyncAPI submodule.
- Document GraphQL APIs with the GraphQL submodule.
- Publish free-form documentation alongside generated specs.
- Restrict re-import to users who can edit the node.
- Show a breadcrumb trail within the API catalogue.
- Serve a helpful 404 for missing API docs.
- Keep specs versioned through node revisions.
- Migrate an existing spec collection into Drupal.
- Let API teams self-serve documentation updates.
- Combine API docs with other site content in one CMS.
