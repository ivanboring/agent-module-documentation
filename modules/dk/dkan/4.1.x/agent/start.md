<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# DKAN (dkan) — agent index

Open-data portal for Drupal — dataset catalog, JSON metadata store, tabular **datastore**, catalog
**harvest**, and an HTTP API. Version **4.1.2**. Core `^10.2 || ^11`. Distribution-scale.
Depends on `dkan_metastore`, `dkan_metastore_admin`, `dkan_metastore_search`, `dkan_common`,
`dkan_data_dictionary_widget`, `json_form_widget` + core config/field/file/link/options/path.

**Pipeline (submodules):** `dkan_metastore` (JSON metadata + API) · `dkan_datastore` (CSV → queryable
table + API; MySQL fast-path nested) · `dkan_harvest` (pull external catalogs) · `dkan_common`
(shared utils + base API; `dkan_alt_api` nested) · `dkan_js_frontend` (decoupled front end) ·
`dkan_sample_content` (demo).

**API access model — granular, per-verb permissions** (not one blanket admin):
`datastore_api_import`, `datastore_api_drop`, `harvest_api_run`, `harvest_api_register`,
`harvest_api_info`, `harvest_api_index`, legacy `post put delete datasets through the api`.
Metadata writes → `MetastoreAccessManager::canUpdate` defers to the entity access handler.
Read routes use `access content` — **catalog is public by default** (usually intended; make it a
conscious choice). Grant each API client exactly the verbs it needs.

Adopt as a portal foundation, not a bolt-on. Submodules documented individually.