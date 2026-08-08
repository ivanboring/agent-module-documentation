<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
AI Search Block provides a block for AI-powered search, with extras, header, and logging submodules.

---

AI-powered search — natural-language queries answered from site content — is increasingly expected. AI Search Block provides a search block for it, with `ai_search_block_extras`, `ai_search_block_header` and `ai_search_block_log`/`_log_tag` (logging) submodules. It builds on the AI ecosystem: the provider key is a credential (keep out of plain config), and queries (and the content searched) go to the AI provider — a governance consideration. The logging submodules record search queries, which can be sensitive (see the privacy note for any query log), so restrict access to the log and set a retention approach. For AI-augmented site search it provides the block; configure the provider and index securely.

---

- Add an AI search block.
- Answer natural-language queries.
- Search content with AI.
- Keep the AI key secure.
- Send only shareable content to AI.
- Log AI searches.
- Restrict the query log.
- Set a log retention approach.
- Configure the AI provider.
- Provide AI search.
- Add a header search.
- Treat queries as sensitive.
- Enable when needed.
- Keep disabled otherwise.
- Restrict administration.
- Confirm on your site.
- Test before production.
- Review configuration.
- Pair with related modules.
- Verify theme fit.
- Match your use case.
- Confirm compatibility.