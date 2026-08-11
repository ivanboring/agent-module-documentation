<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
AI Search - Semantic Chunking splits content by embedding similarity rather than fixed token windows.

---

AI Search - Semantic Chunking provides an alternative chunking strategy for AI Search: instead of splitting text into fixed token-length windows, it groups semantically-related sentences using embedding similarity, so each chunk is a coherent unit. This can improve retrieval quality (better-scoped chunks → better RAG answers) as a drop-in replacement for the default chunker.

It computes embeddings during indexing (via the AI provider), so indexing incurs embedding cost. Depends on `ai` and `ai_search`; requires Drupal 11.1+.

---

- Chunk content by semantic similarity.
- Replace token-based chunking.
- Group related sentences per chunk.
- Improve retrieval quality for RAG.
- Act as a drop-in AI Search chunker.
- Compute embeddings at index time.
- Incur embedding cost during indexing.
- Produce coherent chunk units.
- Depend on `ai` and `ai_search`.
- Require Drupal 11.1+.
- Integrate with AI Search.
- Scope chunks better than fixed windows.
- Support embedding-based retrieval.
- Configure the chunking strategy.
- Enhance semantic search.
- Feed better chunks to the vector store.
- Complement AI Search indexing.
- Use the AI provider for embeddings.
- Improve answer grounding.
- Swap chunkers without reindexing config changes.
