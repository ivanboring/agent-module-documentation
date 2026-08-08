<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Search API Solr NLP (search_api_solr_nlp) — agent index

Exposes Solr's **OpenNLP** integration to **Search API Solr** — named-entity extraction, POS-aware
analysis, sentence detection. Version **1.1.6**. Core `^10.1 || ^11`. Depends on `search_api_solr`.

Moves indexing beyond bag-of-words toward meaning: distinguish person vs place, facet on extracted
entities, improve relevance on prose.

**Coordinated Drupal + Solr setup, not a Drupal-only enable:** OpenNLP requires the language
**models and Solr-side configuration on the Solr server**; the module cannot supply the models.