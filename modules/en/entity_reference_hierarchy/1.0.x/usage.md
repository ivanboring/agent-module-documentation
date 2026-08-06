<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Entity Reference (with) Hierarchy turns an entity reference field into a rooted tree, giving content real parent-child structure.

---

Menus give a site navigation structure; they do not give content structure. A handbook whose chapters contain sections, a product catalogue with sub-categories, an organisational structure — these are properties of the content, and modelling them through a menu means the structure exists only where the menu is, and disappears from Views, from the API and from anything else that reads the content.

This module models the hierarchy on the reference field itself, with a weight so siblings order, so the tree is data. That makes it queryable: "everything under this chapter", "this page's ancestors", "the next sibling" become things a View or an API consumer can ask.

**The design questions are the ones every tree raises**, and they are worth settling before content exists. Whether an entity may have more than one parent decides if it is a tree or a graph, and "show me everything under X" has a very different cost in each. Depth limits matter for the same reason. And moving a subtree is the operation that reveals whether the implementation is doing what you assumed — check what happens to descendants, and to any paths or breadcrumbs derived from the structure.

Its close relative in the campaign is `computed_breadcrumbs`, which derives breadcrumbs from content; a real hierarchy is what makes breadcrumbs derivable at all.

---

- Give content a real parent-child structure.
- Model a handbook's chapters and sections.
- Build a product category tree.
- Query everything under a node.
- Find a page's ancestors.
- Order siblings with a weight.
- Make structure available to Views.
- Expose hierarchy through an API.
- Derive breadcrumbs from content structure.
- Decide whether multiple parents are allowed.
- Set a depth limit.
- Test moving a subtree.
- Check what happens to descendants on a move.
- Avoid modelling structure in a menu only.
- Plan a hierarchy before content exists.
