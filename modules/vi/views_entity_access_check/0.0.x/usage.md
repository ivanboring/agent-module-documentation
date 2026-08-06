<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Views entity_access check runs an entity access check on every row a view returns, discarding rows the current user may not see.

---

This addresses one of Drupal's longest-standing and least understood gaps, and the module's own description names it: core issue **777578**, open since 2010. Views filters its query using the **node access grants** system, which is a SQL-level mechanism, and grants are only one of the ways access is decided. A module implementing `hook_node_access()` — or `hook_entity_access()` for any other entity type — makes its decision in PHP, at the point something asks `$entity->access('view')`, and the Views query knows nothing about it. The consequence is that a view can list entities the viewer is forbidden to open: the title, the fields chosen for the row, and often a teaser are all rendered, and clicking through gives access-denied. Sites discover this when someone notices a restricted document's title in a search result. This module closes it the only way available from outside core — by checking each row after the query and dropping the ones that fail. Version **0.0.4** — a **0.0.x** version number, which is its own statement — on `^8.9` through `^11`. Two consequences follow from checking after the fact and both need planning. **The pager lies**: the query counted rows the check then removes, so a page of ten can display four, and the total is wrong. And **it costs an entity load per row**, which is exactly what the query was avoiding. Neither is a criticism of the module, which cannot do better from where it sits — they are the reason the real fix belongs in core, and the reason this is a mitigation to apply deliberately to the views that need it rather than globally.

---

- Stop a view listing forbidden entities.
- Hide restricted documents from a listing.
- Apply hook_entity_access to Views rows.
- Fix titles leaking in search results.
- Secure a view against grant-less access modules.
- Work around core issue 777578.
- Filter rows by entity access.
- Protect a listing of sensitive content.
- Hide unpublished entities a user cannot view.
- Secure a search results view.
- Apply per-entity access to a report.
- Fix a view showing group-restricted content.
- Protect an intranet listing.
- Hide media a user may not see.
- Secure a taxonomy listing.
- Apply access checks to a feed.
- Protect a members-only view.
- Fix access leakage in a custom view.
