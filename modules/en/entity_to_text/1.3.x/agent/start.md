<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Entity to Text — agent index

**Utility/helper APIs to convert entities to plain text** (fields/Paragraphs/Tika file content) for AI/indexing/
embeddings. `entity_to_text_paragraphs`, `entity_to_text_tika` submodules. Version **1.3.2**. Core
`^10.4||^11||^12`.

Developer/search/AI — output sent to an **AI/LLM or external index** is egress (confirm acceptable); **Tika**
extracts from **uploaded files** (untrusted — sandbox Tika); respect the source's access. No access role.
