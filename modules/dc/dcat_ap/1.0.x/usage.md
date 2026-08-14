<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
DCAT-AP adds the EU DCAT-AP 2.1.0 profile fields and cardinality constraints on top of the base dcat module's dataset, distribution and agent entities.
---
The module solves DCAT-AP 2.1.0 compliance for an open-data catalog built on the base `dcat` module. It works purely through that module's `DcatFieldProvider` plugin system: plugin classes contribute new base field definitions (owl:versionInfo, dcterms:isVersionOf, dcat:hasVersion, dcterms:source, dcterms:provenance, adms:sample) and alter existing base fields to make DCAT-AP-mandatory ones (description, publisher) required. There are no routes, permissions, services or request handling — it is a field-definition/config layer only.

On install, `dcat_ap_install()` calls `dcat_sync_entity_schemas()` so the new and altered base fields are written to the DB (the base tables were already created by `dcat`). Fields then appear automatically on the DCAT entity forms. Set up by simply enabling the module after `dcat`.
---
- Make a Drupal open-data catalog DCAT-AP 2.1.0 compliant
- Enforce dcterms:description as mandatory on datasets
- Enforce dcterms:publisher as mandatory on datasets
- Add an owl:versionInfo version string to datasets
- Link a dataset to one it is a version of (dcterms:isVersionOf)
- Record versions/editions of a dataset (dcat:hasVersion)
- Record source datasets a dataset derives from (dcterms:source)
- Capture provenance statements (dcterms:provenance)
- Reference sample distributions (adms:sample)
- Publish DCAT-AP metadata for EU data-portal harvesting
- Extend the profile with a custom DcatFieldProvider plugin
- Serve as the base layer for country profiles (e.g. dcat_be)
- Ensure schema sync on install so fields persist to the DB
- Provide entity-reference autocomplete for sample distributions
- Add multi-value link fields for related-dataset relationships
