<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Smart Content - agent index

Client-side personalization framework (segments -> conditions -> decisions -> reactions). Version **3.1.0** (3.1.x), core `^9.1 || ^10`.

- Admin menu `/admin/structure/smart-content` (perm `administer smart content`).
- Reaction endpoint: `/ajax/smart_content/{decision_storage}/{token}/{reaction}` -> `ReactionController::getReactionResponse`, perm **`access content`** (effectively anonymous). Requires `token` and `reaction` to be valid UUIDs; loads the decision from the UUID token and returns the reaction's AjaxResponse.
- Many plugin managers: condition, condition_type, condition_group, reaction, segment_set_storage, decision, decision_storage. Param converter `decision_storage`. Cacheable-AJAX theme negotiator + response processor.
- Submodule `smart_content_block` provides Layout Builder / block reactions (`unserialize` of admin-authored block config).

Security: `ReactionController` carries an explicit `// todo: Add access check.` - there is no per-reaction access check. Mitigation: the endpoint is gated by an unguessable 128-bit UUID token that must already exist in decision storage (rendered into the page for that placement), and it returns content designed for public/anonymous display. Not an enumerable disclosure, but the missing access check means a reaction that renders access-restricted content would not be re-checked. Flag for review; no confirmed unauth disclosure. `unserialize()` calls operate on admin-authored block config, not request input.
