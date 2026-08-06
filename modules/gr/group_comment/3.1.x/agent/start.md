<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Group Comment (group_comment) — agent index

Brings **comments under the Group module's access system**, so reading and posting is decided by
**group membership** rather than site-wide permissions. Requires core `comment` and `group`.
Version **3.1.0-alpha1** — **alpha**. Core requirement `^10 || ^11`.

**The gap:** Drupal's comment permissions are **per comment type and per site**, so a member of one
group can read another group's discussion unless something intervenes — while a department's
discussion, a project team's notes and a course cohort's questions all obviously belong to a group.

**Two things worth attaching:**
1. **Verify that group access here is real entity access**, so a restricted comment is restricted in
   **Views, JSON:API and REST** — not merely hidden on the page. That is the property that makes the
   module worth using, and the one `par` (wave 76) fails to provide for nodes.
2. **Comments are indexed and notified.** A **search index** built before the restriction still
   contains the text, and a **comment notification email** sends the content to whoever is
   subscribed **regardless of group**. Scoping comments means checking the **index and the
   notification path** as well as the access layer.

Related: `group_storage` (wave 80), `group_notify` (same wave), `group_bulk_operations` (wave 71).
