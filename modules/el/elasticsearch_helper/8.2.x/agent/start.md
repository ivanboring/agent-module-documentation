<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Elasticsearch Helper (elasticsearch_helper) — agent index

Direct **Elasticsearch** integration — connection, index definitions, document builders — **without**
Search API. Configure at `elasticsearch_helper.elasticsearch_helper_settings_form`.
Version **8.2.0**. Core `^10 || ^11`. Depends on `serialization`.

**Choose it when Elasticsearch's own capabilities are the requirement**, not when "search" is.
Suits document shapes that are not entities, aggregations, indexes consumed by other applications,
mappings needing specific ES features. The trade is the Search API ecosystem — no facets, no
processors, no swapping backends later.

**Three operational points for any direct integration:** the credential has **index-write** access
(keep it out of config exports); the cluster is a **network dependency** — an unhandled indexing
failure is a failed content save; and **indexed documents leave Drupal's access model behind**, so
anything querying the index directly sees everything in it.

`inqube` (same wave) layers Views query building on this kind of arrangement.