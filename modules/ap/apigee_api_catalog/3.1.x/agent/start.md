<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Apigee API Catalog (apigee_api_catalog) — agent index

Publishes OpenAPI (and, via submodules, AsyncAPI/GraphQL/free-form) documentation as `apidoc`
nodes. Core-only dependencies (`text`, `entity`, `file`, `user`, `node`, `path`, `options`,
`file_link`). No `configure` route, no permissions of its own; config schema shipped.

Submodules (own docs, all **Apigee (Experimental)**):
- `apigee_asyncapi_doc` → [../../modules/apigee_asyncapi_doc/3.1.x/agent/start.md](../../modules/apigee_asyncapi_doc/3.1.x/agent/start.md)
- `apigee_graphql_doc` → [../../modules/apigee_graphql_doc/3.1.x/agent/start.md](../../modules/apigee_graphql_doc/3.1.x/agent/start.md)
- `apigee_freeform_doc` → [../../modules/apigee_freeform_doc/3.1.x/agent/start.md](../../modules/apigee_freeform_doc/3.1.x/agent/start.md)

Key facts:
- Node type **`apidoc`** with fields (all in `config/install`):

  | Field | Purpose |
  |---|---|
  | `field_apidoc_spec` | The specification content |
  | `field_apidoc_spec_file_source` | Upload vs. remote-URL source |
  | `field_apidoc_file_link` | Remote spec URL (uses `file_link`) |
  | `field_apidoc_spec_md5` | Checksum of the last fetched spec — how "did it change?" is answered |
  | `field_apidoc_fetched_timestamp` | Last fetch time |
  | `field_api_product` | The Apigee API product reference |

- **`SpecFetcher`** (`SpecFetcherInterface::fetchSpec(NodeInterface $apidoc): string`) injects
  `file_system`, `http_client`, `entity_type.manager`, translation, messenger and a logger.
- Re-import: route `entity.node.reimport_spec_form` at **`/node/{node}/reimport`**
  (`_entity_form: node.reimport_spec`, `_node_operation_route: TRUE`) with

  ```php
  // ApiDocReimportSpecForm::checkAccess()
  return AccessResult::allowedIf($entity->bundle() == 'apidoc' && $entity->access('update', $account));
  ```

  so re-import rides on ordinary node update access — no separate permission.
- Hooks: `hook_entity_type_build()`, `hook_entity_bundle_field_info_alter()`,
  `hook_node_presave/insert/update()`, `hook_entity_operation()` (adds the Re-import operation),
  `hook_form_node_form_alter()`, plus `ApigeeApiCatalogBreadcrumbBuilder` and
  `EventSubscriber\PageNotFoundEventSubscriber`.
- `UpdateService` and `Plugin/Validation` handle spec updates and validation constraints.

Note: the `apidoc` node type and spec handling work without a live Apigee connection; the
`field_api_product` reference is what ties a doc to Apigee itself.
