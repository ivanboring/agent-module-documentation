<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Entity to Text provides utility APIs to convert entities to text.

---

Entity to Text provides **utility/helper APIs to convert entities to plain text** — flattening an entity
(its fields, and via submodules Paragraphs and Tika-extracted file content) into text suitable for AI/LLM
prompts, embeddings or search indexing. It is in the Search package, with `entity_to_text_paragraphs` and
`entity_to_text_tika` submodules.

Use it to turn entities into text for AI/indexing. It is a developer/search/AI utility. Security/data handling:
what you do with the extracted text matters — if it is sent to an **AI/LLM or external index**, that is data
egress (confirm acceptable), and the **Tika** submodule extracts text from **uploaded files** (treat uploads as
untrusted; Tika should run in a trusted/sandboxed setup). The extraction itself reflects the entity's own field
data (respect the source's access when you use the output). It has no access-control role. Use the API to
convert entities.

---

- Convert entities to plain text.
- Flatten fields/Paragraphs/file content.
- Serve AI/indexing/embeddings.
- Provide Tika + Paragraphs submodules.
- Serve developers.
- Extract entity text.
- KNOW sending text to an AI/index is egress (confirm acceptable).
- Treat Tika-extracted uploads as untrusted.
- Respect the source's access when using output.
- Run Tika in a trusted/sandboxed setup.
- Have no access-control role.
- Use the API to convert entities.
- Handle entity-to-text.
- Convert entities.
- Configure the extraction.
- Extract text.
- Handle the utility.
- Flatten entities.
- Confirm egress.
- Provide entity-to-text conversion.
