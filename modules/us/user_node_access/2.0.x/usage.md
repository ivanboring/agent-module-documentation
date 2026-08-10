<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
User Node Access allows restricting a node to specific users.

---

User Node Access is meant to **restrict a node to specific users** — an admin picks which users may access
a given node. It depends on core Node.

**Security warning (danger 3, verified): this version does NOT reliably restrict access.** Its enforcement is a
single `hook_node_access()` that is guarded by `if ($node == \Drupal::routeMatch()->getParameter('node'))` —
so the deny **only fires when the node is the one in the current route** (its own `/node/<id>` page). For the
same node shown in a **Views listing, an entity reference, a block, its `?_format=json` / JSON:API
representation, or any other route**, the check is skipped and the node is fully accessible. And the module
implements **no node grants** (`hook_node_grants`/`hook_node_access_records`), so **query-level listings
(Views, search, RSS, JSON:API) never filter it out** regardless. The net effect is that a node you believe is
restricted to specific users is readable by anyone through ordinary paths — while only the bare page 403s.
There is also a loop bug that wrongly denies allowed users not listed first. **Do not rely on this module to
protect content.** For real per-node access, use node access **grants** (a grant-based module) that enforce at
the query level. See the local security.md for the full analysis and fix.

---

- Intend to restrict a node to specific users.
- KNOW it does NOT reliably restrict access.
- Understand the deny only fires on the node's own page.
- Know listings/JSON/references bypass the restriction.
- Know it implements NO node grants (listings never filter).
- Know a restricted node is broadly readable.
- NOT rely on this module to protect content.
- Use grant-based node access for real restriction.
- Know the allow-list loop mis-denies non-first users.
- Depend on core Node.
- See the security.md for the fix.
- Enforce access at the query level instead.
- Handle node access (broken).
- Restrict nodes (unreliably).
- Configure the restriction.
- Guard node access properly elsewhere.
- Handle the module.
- Avoid false security.
- Fix with node grants.
- Provide (broken) node restriction.
