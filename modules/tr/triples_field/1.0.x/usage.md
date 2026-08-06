<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Triples Field stores RDF-style triples — subject, predicate, object — as field values on an entity.

---

The triple is the unit of the semantic web: a statement in which a subject stands in a named relation to an object. "This dataset was published by that organisation." "This person is an author of that paper." "This term is broader than that one." Drupal's field system models properties of a thing, and modelling *statements about* a thing needs either a field per predicate — which does not scale when the predicates are open-ended — or a place to put arbitrary triples, which is what this provides. The audience is specific and real: cultural heritage collections, research data catalogues, library systems, archives and government data portals all publish in formats built on triples, and their metadata is genuinely open-ended, since a new predicate arrives with each new vocabulary a partner uses. Version **1.0.10** on core `^10 || ^11`. Two things worth stating. **Core removed the RDF module in Drupal 10**, moving RDF output to contrib — which means a site building on triples now assembles its own publishing path, and this field is the storage half rather than a complete solution; the serialisation to RDFa, JSON-LD or Turtle is a separate decision. And **a triple is only useful if the predicate is a resolvable identifier**: "publisher" as a free-text string is a label, while `http://purl.org/dc/terms/publisher` is a statement another system can act on — so the value of the field depends entirely on whether the vocabulary is controlled, which is a curation commitment rather than a configuration one.

---

- Store RDF triples on an entity.
- Model open-ended metadata.
- Record a dataset's publisher relation.
- Store authorship statements.
- Model a controlled vocabulary's relations.
- Support a research data catalogue.
- Store archival metadata.
- Record provenance statements.
- Support a cultural heritage collection.
- Model relationships between terms.
- Store library catalogue metadata.
- Support a government data portal.
- Record a work's contributors semantically.
- Store statements from several vocabularies.
- Model linked data in Drupal.
- Support a metadata exchange format.
- Record subject classifications.
- Store predicate-based assertions.
