<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Views entity_access check (views_entity_access_check) — agent index

Runs **`$entity->access()` on every row a view returns**, discarding rows the user may not see.
Depends on core `views`. Settings behind `administer views_entity_access_check configuration`.
Version **0.0.4** — a `0.0.x` version number, which is its own statement.
Core requirement `^8.9 || ^9 || ^10 || ^11`.

**The gap it addresses is one of Drupal's oldest**, and the module names it: core issue **777578**,
open since 2010.
- Views filters its **query** using the **node access grants** system — a SQL-level mechanism.
- A module implementing **`hook_node_access()` / `hook_entity_access()`** decides in **PHP**, when
  something asks `$entity->access('view')`.
- **The Views query knows nothing about the second.** So a view can list entities the viewer cannot
  open — title, row fields and often a teaser all rendered, with access-denied on click. Sites
  discover this when a restricted document's title appears in search results.

**Two consequences of checking after the query — plan for both:**
1. **The pager lies.** The query counted rows the check then removes: a page of ten can show four,
   and the total is wrong.
2. **It costs an entity load per row** — exactly what the query was avoiding.

Neither is a criticism; the module cannot do better from outside core. They are why **the real fix
belongs in core**, and why this is a mitigation to apply **deliberately to the views that need it**
rather than globally.

Related: `par` (wave 76) is an example of a module that restricts without grants — precisely the
case this catches.
