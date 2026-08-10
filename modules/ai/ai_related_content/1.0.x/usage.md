<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
AI Related Content provides a Views Block integration with AI Search.

---

AI Related Content provides a **Views block that surfaces related content using AI Search** — semantic
similarity via the AI module's vector search, so a page can show "related articles" ranked by meaning rather
than shared tags. It depends on core Views/Block, Search API and AI Search, provides its own permissions, in
the AI Related Content package.

Use it to show AI-powered related content. It is an AI/search feature. Security/data handling: it relies on AI
Search (embeddings), which means content is embedded/queried through the configured AI provider (external data
egress if cloud-based — confirm acceptable; credentials via the AI module as secrets). Results follow the
Search API index's access (ensure the index respects content access so related-content blocks don't surface
restricted content). It has no access-control role beyond its permission. Configure the AI Search index and
block.

---

- Show AI-powered related content.
- Use AI Search semantic similarity.
- Rank by meaning, not tags.
- Depend on Views/Block/Search API/AI Search.
- Provide its own permissions.
- Serve related-content blocks.
- Embed/query via the AI provider (egress).
- Handle AI credentials as secrets.
- Ensure the index respects content access.
- Not surface restricted content.
- Have no access-control role beyond permission.
- Configure the index and block.
- Handle AI related content.
- Show related content.
- Configure the block.
- Find similar content.
- Handle the integration.
- Rank content.
- Configure AI Search.
- Provide related content.
