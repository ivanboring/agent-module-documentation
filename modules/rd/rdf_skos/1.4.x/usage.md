<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
RDF SKOS exposes **SKOS** concept schemes and concepts — the W3C standard for published thesauri and controlled vocabularies — as Drupal entities backed by a SPARQL triple store rather than Drupal's own database.

---

SKOS is how libraries, governments and EU institutions publish controlled vocabularies: EuroVoc, subject headings, standardised classification schemes, each with concepts, broader/narrower relationships and multilingual labels. Consuming one in Drupal by copying it into taxonomy means it goes stale and loses its identifiers; RDF SKOS instead reads it live, defining `skos_concept_scheme` and `skos_concept` entity types stored through **`sparql_entity_storage`**, with `ConceptSchemeHtmlRouteProvider` generating routes and a `rdf_skos_language_mapping` submodule aligning SKOS language tags with Drupal's. Permissions follow the standard entity pattern, with `administer skos concept scheme entities` marked `restrict access: true`. The requirement that decides feasibility is infrastructure: the module needs a **SPARQL endpoint** configured as a `sparql_default` database connection in `settings.php` — typically Virtuoso or another triple store. Without it Drupal will not bootstrap, which this campaign confirmed directly: enabling the module on a site with no such connection produced *"The specified database connection is not defined: sparql_default"* on every command until a stub was added. It comes from the OpenEuropa ecosystem, and `sparql_entity_storage` is required at `^2.0.0-beta1`.

---

- Use EuroVoc as a controlled vocabulary.
- Reference published SKOS concepts from content.
- Keep a thesaurus live rather than copied.
- Preserve concept URIs as identifiers.
- Consume a government classification scheme.
- Use multilingual concept labels.
- Model broader and narrower relationships.
- Align SKOS language tags with Drupal's.
- Reference a library subject heading.
- Publish content classified by a standard scheme.
- Query concepts from a triple store.
- Avoid duplicating an external vocabulary.
- Support an EU institutional metadata requirement.
- Keep classification in step with its publisher.
- Build linked-data-aware content.
- Reference concepts across several sites.
- Map site taxonomy to a public scheme.
- Support semantic interoperability.
