<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
OpenAI VDB Provider registers OpenAI as a vector-database backend for AI Search.

---

OpenAI VDB Provider (experimental) lets the AI module use OpenAI as a vector database provider — storing and querying embeddings via OpenAI for AI Search/RAG workflows. It plugs into the AI module's vector-database abstraction so embedding storage and similarity search route through OpenAI.

It requires the OpenAI provider (`ai_provider_openai`) and AI Search, with the API key stored via the Key module (env-backed). Embedding storage/query sends vectors and text to OpenAI (cost + data egress). Marked experimental. Depends on `ai`, `ai:ai_search` (^1.2), `key`, and `ai_provider_openai`; supports Drupal 10.4+ and 11.

---

- Use OpenAI as a vector database.
- Store embeddings via OpenAI.
- Query embeddings for similarity.
- Support AI Search/RAG workflows.
- Plug into the VDB abstraction.
- Require the OpenAI provider.
- Require AI Search (^1.2).
- Store the API key via the Key module.
- Back the key with an environment variable.
- Send vectors/text to OpenAI (egress + cost).
- Be marked experimental.
- Depend on `ai`, `key`, `ai_provider_openai`.
- Support Drupal 10.4+ and 11.
- Route similarity search to OpenAI.
- Integrate embeddings storage.
- Keep secrets in env/Key.
- Complement other VDB providers.
- Support semantic retrieval.
- Configure the vector index.
- Enable RAG over OpenAI embeddings.
