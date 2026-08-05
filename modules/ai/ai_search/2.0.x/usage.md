<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
AI Search is a Search API backend that indexes content as **vector embeddings** in a vector database, enabling semantic search — matching on meaning rather than on words.

---

Keyword search fails in a predictable way: someone searching "how do I cancel my membership" finds nothing because the page says "ending your subscription". Vector search addresses that by embedding both the content and the query into a space where semantic similarity is measurable, so related meaning matches even when vocabulary does not. It is also the retrieval half of retrieval-augmented generation, which is why this sits in the AI family: an assistant answering questions about a site needs exactly this to find the relevant passages. The module implements it as a Search API backend, depending on the `ai` module for the embedding provider and `search_api (>=8.x-1.40)`, and its info file declares **`lifecycle: experimental`** with the release at **2.0.0-alpha2** — both signals to weigh seriously for something that sits in the search path. Three things belong in any evaluation. **Embedding costs money per item indexed and per query** with a hosted provider, so a large site's reindex is a real invoice. **Content leaves the site** to be embedded unless the provider is local. And **access control is the hard part**: a vector index returns nearest neighbours, and ensuring restricted content does not surface requires Search API's access handling to be applied and verified rather than assumed.

---

- Search by meaning rather than keywords.
- Match "cancel membership" to "end subscription".
- Provide retrieval for an AI assistant.
- Improve search on a documentation site.
- Reduce zero-result searches.
- Find related content semantically.
- Support natural-language queries.
- Build a RAG pipeline over site content.
- Improve support-site search.
- Surface conceptually related articles.
- Index content as embeddings.
- Combine semantic and keyword search.
- Use a local model for embeddings.
- Support multilingual semantic matching.
- Improve internal knowledge search.
- Reduce reliance on exact vocabulary.
- Power an on-site question answerer.
- Find policy content by intent.
