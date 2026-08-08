<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Azure AI Search VDB Provider enables the use of Azure AI Search VDB in the AI module.

---

Azure AI Search VDB Provider adds **Azure AI Search** as a **vector-database (VDB) provider** for the
Drupal AI module — so AI features (RAG / semantic search over embeddings) can store and query vectors in Azure
AI Search. It depends on the AI module, its AI Search submodule, the Key module and Search API, in the AI
Vector Database Providers (Experimental) package.

Use it to back AI vector search with Azure AI Search. It is an AI/integration feature. Security handling: it
talks to **Azure AI Search over the network** with an **API key** — the module integrates with the **Key
module**, so store the Azure credential as a Key (env/secret), not in plain config, and use the HTTPS Azure
endpoint. Indexed embeddings/content are sent to Azure (data egress) — confirm that is acceptable for your
data. It has no access-control role. Configure the Azure endpoint and key.

---

- Add Azure AI Search as a vector DB provider.
- Back AI RAG/semantic search with Azure.
- Store/query vectors in Azure.
- Depend on AI, AI Search, Key, Search API.
- Talk to Azure over the network.
- Use an API key via the Key module.
- Store the Azure credential as a Key/secret.
- Send embeddings/content to Azure (data egress).
- Confirm the egress is acceptable.
- Use the HTTPS Azure endpoint.
- Have no access-control role.
- Configure the endpoint and key.
- Handle Azure vector search.
- Provide a VDB provider.
- Configure Azure.
- Handle embeddings.
- Query vectors.
- Configure credentials.
- Handle the integration.
- Provide vector storage.
