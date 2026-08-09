<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Qdrant VDB Provider enables the use of a Qdrant vector database in the AI module.

---

Qdrant VDB Provider adds **Qdrant** as a **vector-database (VDB) provider** for the Drupal AI module — so
AI features (RAG / semantic search over embeddings) can store and query vectors in a Qdrant instance. It
depends on the AI module, its AI Search submodule and the Key module, in the AI Vector Database Providers
(Experimental) package.

Use it to back AI vector search with Qdrant. It is an AI/integration feature. Security handling: it talks to
**Qdrant over the network** with an **API key** and integrates with the **Key module** — store the credential
as a Key (env/secret), point it at your **trusted** Qdrant endpoint over HTTPS, and note indexed embeddings/
content are sent to Qdrant (data egress; self-hosting Qdrant keeps it on your infrastructure). It has no
access-control role. Configure the Qdrant endpoint and key.

---

- Add Qdrant as a vector DB provider.
- Back AI RAG/semantic search with Qdrant.
- Store/query vectors in Qdrant.
- Depend on AI, AI Search, Key.
- Talk to Qdrant over the network.
- Use an API key via the Key module.
- Store the Qdrant credential as a Key/secret.
- Point at a trusted HTTPS endpoint.
- Note embeddings are sent to Qdrant (egress).
- Self-host to keep data in-house.
- Have no access-control role.
- Configure the endpoint and key.
- Handle Qdrant vector search.
- Provide a VDB provider.
- Configure Qdrant.
- Query vectors.
- Handle embeddings.
- Configure credentials.
- Handle the integration.
- Provide vector storage.
