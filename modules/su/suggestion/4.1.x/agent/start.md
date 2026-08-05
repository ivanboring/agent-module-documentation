<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Suggestion (suggestion) — agent index

Builds an **n-gram index** from content and serves type-ahead suggestions. No dependencies.
Core requirement `^10.2 || ^11`.
Admin at `/admin/config/suggestion` (`administer suggestion`); autocomplete at
`/suggestion/autocomplete` with **`_access: 'TRUE'`** (the routing file comments on this
deliberately).

Key facts:
- **The open endpoint is acceptable because indexing filters on publication status** —
  `SuggestionStorage` applies `condition('n.status', 1)`, so unpublished nodes contribute nothing.
- **But the filter is status, not node access.** Content that is *published* yet restricted by a
  node-access module (`rac`, `access_policy`, Group…) is still indexed, and its vocabulary can
  surface as a suggestion. On a site with per-node restrictions, review what is indexed.
- Responses are cacheable with `url.query_args:q` context and a 1-hour max-age; queries shorter
  than the configured minimum return empty with max-age 0.
- Per-n-gram editing at `/admin/config/suggestion/edit/{ngram}` lets an administrator remove or
  adjust individual entries — useful for suppressing an embarrassing completion.
