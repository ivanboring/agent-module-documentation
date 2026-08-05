<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# RDF SKOS (rdf_skos) — agent index

**SKOS** concept schemes and concepts as Drupal entities, stored in a **SPARQL triple store**.
Depends on `sparql_entity_storage ^2.0.0-beta1`. Core requirement `^10 || ^11`.
Submodule: `rdf_skos_language_mapping`.

> ## It requires a SPARQL endpoint, and Drupal will not bootstrap without one
>
> A `sparql_default` connection must exist in `settings.php` (typically Virtuoso or another triple
> store). **Confirmed in this campaign:** enabling the module on a site without one made every
> drush command fail with
> `The specified database connection is not defined: sparql_default` until a stub connection was
> added. Establish the infrastructure before proposing this module — it is not a
> configure-later dependency.

Key facts:
- Entity types `skos_concept_scheme` and `skos_concept`, with
  `ConceptSchemeHtmlRouteProvider` generating routes (so the routing file is thin).
- Permissions follow the standard entity pattern; `administer skos concept scheme entities` is
  `restrict access: true`.
- `rdf_skos_language_mapping` aligns SKOS language tags with Drupal's language codes — needed for
  multilingual concept labels to resolve.
- **Why not just copy the vocabulary into taxonomy:** concepts keep their published URIs as
  identifiers and stay in step with the publisher. That is the whole point for EuroVoc, subject
  headings and government classification schemes.
- From the **OpenEuropa** (EU institutional Drupal) ecosystem.
