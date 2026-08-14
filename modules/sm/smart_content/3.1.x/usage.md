<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Smart Content is an API/toolset for personalizing user experiences for both anonymous and authenticated users. Site builders define segments as collections of conditions (browser, cookie, UTM, time, etc.); at runtime a "decision" evaluates client-side data against those segments and fires a "reaction" - most commonly swapping in different block content via AJAX.

Use it as the foundation for on-site personalization and lightweight A/B/segment targeting, extended by submodules (block, CDN, dataLayer, Lytics, paragraphs, preview, SSR).

---

Install Smart Content (and typically the bundled `smart_content_block` submodule). Manage segment sets and settings under `/admin/structure/smart-content` (permission `administer smart content`). Personalization is authored by placing a Smart Content decision block and configuring its segments/reactions.

At runtime the page renders a decision with a per-instance UUID token stored via a decision-storage plugin; browser JS collects condition data and calls the reaction endpoint `/ajax/smart_content/{decision_storage}/{token}/{reaction}` (permission `access content`). The controller validates that token and reaction are UUIDs, loads the decision from the token, and returns the chosen reaction's AJAX response. Conditions, condition types, decisions, reactions and storage are all pluggable.

---

- Personalize content for anonymous and authenticated users.
- Define segments from reusable condition plugins.
- Group conditions with AND/OR operators and negation.
- Evaluate decisions client-side for cacheable pages.
- Swap block content as a reaction to a segment match.
- Fetch reactions over an AJAX endpoint by UUID token.
- Store decisions via pluggable decision-storage backends.
- Extend with custom condition plugins.
- Extend with custom reaction plugins.
- Provide condition-type plugins (textfield, number, select, boolean, key/value).
- Reuse segment sets across multiple placements.
- Keep pages cacheable via a cacheable AJAX response layer.
- Integrate with Layout Builder and block placement (via submodule).
- Support dataLayer, CDN, Lytics, paragraphs, preview and SSR submodules.
- Gate administration behind `administer smart content`.
- Pass context params to reactions via `_sc_context_*` query keys.
