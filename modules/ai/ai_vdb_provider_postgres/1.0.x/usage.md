<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Postgres VDB Provider lets the AI module store and query embeddings in a PostgreSQL database using the pgvector extension, instead of a dedicated vector service.

---

Retrieval-augmented generation needs somewhere to keep embeddings and search them by similarity, and the default answer is a managed vector service — another vendor, another credential, another thing to back up. If the stack already runs PostgreSQL, pgvector turns it into a competent vector store: the embeddings live beside the rest of the data, in the same backup and the same security boundary, with no additional service to operate.

The module registers as a VDB provider so anything built on the AI module's abstraction — search, RAG pipelines, semantic similarity — can use it without knowing which backend is underneath, and swapping later is configuration. `PostgresPgvectorClient` handles the connection and queries, `Enum/VectorIndexStrategy` exposes the index choice (which is the main performance lever in pgvector — the trade between build time, memory and recall), and `VectorIndexConfigSubscriber` reacts to index configuration changes.

**Credential handling is done correctly here and is worth citing.** The settings form uses `'#type' => 'key_select'`, and `submitForm()` stores the **Key entity id**, not the secret. The plaintext is resolved only inside `validateForm()`, in memory, to test the connection. Nothing sensitive reaches configuration.

Two caveats. It is marked `lifecycle: experimental` and the release is **1.0.0-alpha3**, so treat the API as unsettled. And the Postgres server must have the pgvector extension available — this module does not install it, and the connection test is where you will find out.

---

- Store AI embeddings in PostgreSQL with pgvector.
- Run RAG without a separate vector service.
- Keep embeddings inside an existing database boundary.
- Include vectors in the site's normal backups.
- Choose a pgvector index strategy for recall vs speed.
- Connect to an external Postgres host.
- Store the database password in a Key entity.
- Swap vector backends later through configuration.
- Power semantic search over site content.
- Build a similarity feature on existing infrastructure.
- Avoid a second vendor for vector storage.
- Test the database connection from the settings form.
- Verify pgvector is available on the server.
- Evaluate an experimental provider before committing.
- Compare pgvector performance against a managed service.