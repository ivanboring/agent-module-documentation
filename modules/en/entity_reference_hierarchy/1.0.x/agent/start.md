<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Entity Reference (with) Hierarchy (entity_reference_hierarchy) — agent index

Turns an entity reference field into a **rooted tree** with sibling weights.
Version **1.0.1**. Core `^9 || ^10 || ^11`. No dependencies.

**What it adds over a menu:** structure becomes **data**, so "everything under this chapter",
"this page's ancestors" and "next sibling" are answerable from Views and an API — not only where
the menu is rendered.

**Settle before content exists:** whether an entity may have **more than one parent** (tree vs
graph — "everything under X" costs very differently), depth limits, and what **moving a subtree**
does to descendants and to anything derived from the structure (paths, breadcrumbs).

Relates to `computed_breadcrumbs` — a real hierarchy is what makes breadcrumbs derivable.