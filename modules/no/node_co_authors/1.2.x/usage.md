<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Node Co-Authors adds a co-authors field to nodes and grants those users the same rights over the content that the author has.

---

Drupal's ownership model has exactly one author per node, and every "own content" permission keys off it. That works until two people write something together, or a piece is handed over, or a team shares responsibility for a section — at which point the choices are to give everyone `edit any` (far too much) or to move the author field around (losing the record of who wrote it). Co-authorship is the missing middle. The implementation is worth reading as a model of how this should be done. A `co_authors` base field on nodes holds user references, and `hook_ENTITY_TYPE_access()` grants nothing on its own — it **requires the permission as well**:

```php
if ($op === 'update') {
  return AccessResult::allowedIfHasPermission($account, 'edit own ' . $type . ' content')
    ->andIf($isCoAuthor);
}
```

`andIf`, not `orIf`. A co-author gets exactly the rights they would already have over their own content of that type, and no more — so naming someone a co-author cannot hand them a capability their role does not carry. Cache metadata is set correctly too (`cachePerUser()`, plus the node as a cacheable dependency). Version **1.2.3** on `^9 || ^10 || ^11`, depending on core `node`. Three permissions control who may edit the co-author list — for own content, for co-authored content, and for all content — and the second is the one to think about, since it lets a co-author add further co-authors, which is a chain worth deciding on deliberately.

---

- Let two people edit one article.
- Share ownership of a page.
- Hand content over without changing the author.
- Give a team edit rights to their section.
- Credit a second writer.
- Avoid granting edit any content.
- Let an editor co-own a colleague's draft.
- Support a collaborative writing workflow.
- Allow a deputy to maintain a page.
- Keep the original author recorded.
- Let a co-author view an unpublished draft.
- Support a departmental content owner.
- Delegate maintenance of a page.
- Share a landing page between teams.
- Cover for a colleague's absence.
- Support pair-authored documentation.
- Let a co-author delete their shared content.
- Model shared editorial responsibility.
