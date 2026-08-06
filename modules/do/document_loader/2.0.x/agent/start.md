<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Document Loader (document_loader) — agent index

**Normalization layer** for loading documents from various sources into one consistent shape.
Configure at `document_loader.settings_form`. Version **2.0.5**. Core `^10.4 || ^11`.
Depends on `file`. Permission: `document_loader.administer`.

Same pattern (and reasoning) as LangChain's document loaders — sources are plugins, output is
uniform, consumers work against one shape. Most likely current use is feeding a **RAG** pipeline;
equally applicable to a search index or a migration.

**Two things to settle when documents are ingested:**

1. **Access follows content.** A loader that ingests a private file has moved that content
   somewhere with different access rules. Understand where it lands.
2. **Document extraction is an attack surface.** PDF and Office parsers are historically a rich
   source of vulnerabilities — know which library does the extraction and keep it patched.