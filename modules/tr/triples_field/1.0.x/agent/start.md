<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Triples Field (triples_field) — agent index

Field type storing **RDF-style triples** — subject, predicate, object — as values on an entity.
Version **1.0.10**. Core requirement `^10 || ^11`.

**The modelling gap:** Drupal's field system models **properties of a thing**. Modelling
**statements about** a thing needs either a field per predicate — which does not scale when
predicates are open-ended — or somewhere to put arbitrary triples.

**The audience is specific and real:** cultural heritage collections, research data catalogues,
library systems, archives and government data portals. Their metadata is **genuinely open-ended** —
a new predicate arrives with each vocabulary a partner uses.

**Two things worth stating:**
1. **Core removed the RDF module in Drupal 10**, moving RDF output to contrib. A site building on
   triples now assembles its own publishing path — **this is the storage half**, and serialisation
   to RDFa, JSON-LD or Turtle is a separate decision.
2. **A triple is only useful if the predicate is a resolvable identifier.** "publisher" as free text
   is a **label**; `http://purl.org/dc/terms/publisher` is a **statement another system can act
   on**. The field's value therefore depends on whether the vocabulary is **controlled** — a
   curation commitment, not a configuration one.
