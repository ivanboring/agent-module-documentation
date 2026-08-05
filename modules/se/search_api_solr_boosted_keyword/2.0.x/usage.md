<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Search API Solr: Boosted Keyword adds a field where editors enter keywords with a boost level each, so a document ranks higher for the terms someone has decided matter for it.

---

Relevance tuning normally happens at the index level: boost the title field, boost recent content, boost a content type. That is blunt, because relevance is often per-document — this page is the canonical answer for "password reset" even though the phrase appears twice in it, and that page about a product should surface for the product's old name, which appears nowhere in its text. Editorial boosting handles both, and it is how site search is made to feel curated rather than merely correct. Putting the keywords in a field means the decision lives with the content, is visible on the edit form, travels with a revision and can be reviewed. Version **2.0.0-beta3** — a **beta** — requiring `search_api_solr >= 4.x` and core `field`, with an `administer boosted keywords overview` permission for extracting a site-wide view of what has been boosted, which is the part that keeps the feature governable. Three things to hold in mind. **Boosting is a relevance signal, not a filter**: a boosted document ranks higher for a term and does not appear for terms it does not match at all, which is the most common misunderstanding when someone asks why their keyword did nothing. **Boosts compete**, so when every editor boosts their own page the effect cancels and the site is back where it started — the overview permission exists for exactly this, and someone has to use it. And **the field is index data**, so a change needs a reindex of that item before it takes effect.

---

- Boost a page for a specific search term.
- Surface a canonical answer first.
- Rank a product for its old name.
- Add editorial control to search results.
- Improve site search relevance.
- Boost a support article for a phrase.
- Add synonyms as boosted keywords.
- Curate results for common queries.
- Improve a knowledge base's search.
- Rank a landing page for a campaign term.
- Audit which keywords are boosted.
- Improve findability of key pages.
- Support a search quality programme.
- Boost a policy page for its topic.
- Rank a service page for a colloquial term.
- Fix a poor result for a known query.
- Support an editor-curated search.
- Add per-document relevance signals.
