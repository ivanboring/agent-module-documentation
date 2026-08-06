<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Document Loader provides a normalization layer so documents from different sources arrive in one consistent shape.

---

Anything that processes documents — a search index, a RAG pipeline, a migration, a text-analysis step — needs them in a uniform form, and documents arrive in none. A PDF, a Word file, a web page and a plain text upload have nothing structurally in common, and every consumer that handles them separately reimplements the same conversion badly.

A loader abstraction fixes that: sources are plugins, the output is normalised, and the consumer works against one shape. The name and the pattern will be familiar to anyone who has used LangChain's document loaders, and the reasoning is the same.

Its most likely use on a current Drupal site is feeding an AI pipeline — retrieval-augmented generation needs documents chunked and embedded, and getting them into a consistent form is the first step. But it is equally applicable to a search index or a migration, and being source-agnostic is what makes it worth having as a layer rather than as a feature of one consumer.

**Two things to settle when documents are ingested.** Loading a document means reading its content, so whatever access controls applied to the source need to be understood — a loader that indexes a private file has moved that content into a new place with new access rules. And **document extraction is an attack surface**: parsers for PDF and Office formats are historically a rich source of vulnerabilities, so know which library does the extraction and keep it patched.

Requires Drupal `^10.4 || ^11`, and the permission `document_loader.administer` gates its settings.

---

- Load documents from different sources uniformly.
- Feed a RAG pipeline with documents.
- Normalise PDFs and Word files.
- Ingest a web page as a document.
- Prepare documents for a search index.
- Support a content migration.
- Add a source as a plugin.
- Work against one document shape.
- Understand where extracted content ends up.
- Preserve source access controls after ingest.
- Know which library performs extraction.
- Keep document parsers patched.
- Chunk documents for embedding.
- Audit what has been ingested.
- Restrict who configures loaders.
