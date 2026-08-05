<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Suggestion builds an n-gram index from site content and serves type-ahead suggestions from it, so a search box offers completions drawn from what the site actually contains.

---

A search box with no suggestions makes visitors guess the site's vocabulary, and the guesses are usually wrong — people search for "car park" on a site that says "parking". Suggestions solve that by showing what will actually match, and they have to come from the content rather than from a hand-maintained list to stay current. This module builds the index itself, storing n-grams and serving them from `/suggestion/autocomplete`, with administration at `/admin/config/suggestion` behind `administer suggestion` and per-n-gram editing so an administrator can remove or adjust entries. The autocomplete route is declared `_access: 'TRUE'` — with a wry comment in the routing file, *"Save me from the people that would save me from myself"* — and the important question that raises is whether the index can leak content, which it cannot in the ordinary case: indexing filters on `status = 1`, so unpublished nodes are excluded. Worth knowing, though, that the filter is publication status rather than **node access**, so content that is published but restricted by a node-access module is still indexed, and its vocabulary can surface as suggestions. On a site with per-node access restrictions, review what is being indexed.

---

- Suggest search terms as visitors type.
- Draw suggestions from real content.
- Help visitors find the site's vocabulary.
- Reduce zero-result searches.
- Improve a search box's usability.
- Remove an unwanted suggestion.
- Build suggestions without an external service.
- Improve mobile search entry.
- Reduce misspelled queries.
- Show popular terms first.
- Support a documentation site's search.
- Keep suggestions current automatically.
- Limit suggestions to chosen content types.
- Improve discoverability of content.
- Reduce reliance on exact wording.
- Support a large content archive.
- Cache suggestion responses.
- Improve conversion from search.
