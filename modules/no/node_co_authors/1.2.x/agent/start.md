<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Node Co-Authors (node_co_authors) — agent index

Adds a `co_authors` base field to nodes; co-authors get the author's rights over that node.
Depends on core `node`. Version **1.2.3**. Core requirement `^9 || ^10 || ^11`.

**The access implementation is a model of how this should be done — reviewed and correct.**
`node_co_authors_node_access()` grants nothing on its own; it **conjoins** co-authorship with the
permission the user would already need:

```php
if ($op === 'update') {
  return AccessResult::allowedIfHasPermission($account, 'edit own ' . $type . ' content')
    ->andIf($isCoAuthor);          // andIf, not orIf
}
```

So naming someone a co-author **cannot hand them a capability their role does not carry**. Same
pattern for `delete` (`delete own <type> content`) and for viewing unpublished
(`view own unpublished content`). Cache metadata is right too: `cachePerUser()` plus the node as a
cacheable dependency.

Permissions: `edit co-authors of own content`, `edit co-authors of co-authored content`,
`edit co-authors of all content`.
**Think about the second one**: it lets a co-author add further co-authors — a chain worth deciding
on deliberately.

Why it exists: Drupal has exactly one author per node and every "own content" permission keys off
it. The alternatives are `edit any` (far too much) or reassigning the author (losing the record).
