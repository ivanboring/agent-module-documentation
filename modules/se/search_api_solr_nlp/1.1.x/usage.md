<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Search API Solr NLP adds support for Solr's OpenNLP integration, bringing natural-language processing — such as named-entity extraction and part-of-speech-aware analysis — into a Search API Solr index.

---

Plain text indexing treats a document as a bag of tokens. That is enough for keyword search and blind to meaning: it cannot tell that "Washington" is a person in one document and a place in another, or that a phrase is a named entity rather than three unrelated words. Apache Solr can do better through OpenNLP, which brings language models for tokenisation, sentence detection, part-of-speech tagging and named-entity recognition — but that capability has to be wired into the Search API Solr pipeline to be usable from Drupal.

This module is that wiring. It exposes Solr's OpenNLP features to Search API Solr so a site can build indexes and analysers that understand language structure, not just tokens — the foundation for entity-aware search, better relevance on natural-language content, and faceting on extracted entities.

Two things to plan for. OpenNLP requires the corresponding models and Solr-side configuration to be present on the Solr server; the Drupal module cannot supply the language models, so this is a coordinated Drupal-and-Solr setup, not a Drupal-only enable. And it depends on `search_api_solr`, whose server it extends. For content where meaning matters — research corpora, news archives, anything where "who and what is this about" beats "which words appear" — it is the route to it.

---

- Add NLP to a Solr index.
- Enable OpenNLP in Search API Solr.
- Extract named entities from content.
- Do part-of-speech-aware analysis.
- Improve relevance on natural-language text.
- Facet on extracted entities.
- Distinguish a person from a place.
- Index meaning, not just tokens.
- Build entity-aware search.
- Search a research corpus semantically.
- Search a news archive by entity.
- Provision OpenNLP models on Solr.
- Coordinate a Drupal-and-Solr NLP setup.
- Extend a search_api_solr server.
- Detect sentences for better analysis.
- Tokenise with language models.
- Improve recall on prose content.
- Support named-entity faceting.
- Move beyond bag-of-words indexing.
- Understand what content is about.