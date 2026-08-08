<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Book Tree Menu provides an alternative navigation block for core's Book module, rendering a book's structure as a tree rather than the limited default block.

---

Core's Book module builds hierarchical documentation but its navigation block is minimal — it does not give a good whole-of-book tree the way a documentation site wants, where a reader needs to see where they are in the larger structure and jump around it. This module supplies that: a tree-style navigation of the book, so the full hierarchy is visible and navigable from any page.

It depends on core **Book**, and is only useful on a site using books. It is a display alternative — it changes how book navigation is presented, not how books are authored — so it slots in as a block you place where the book navigation should appear. It sits alongside `custom_book_block` (also in this wave) as one of several takes on "core book navigation is not enough"; which fits depends on whether you want a full tree (this) or a more configurable block.

For documentation and handbook sites built on Book, it is a better reader experience. Confirm it renders the depth and branch you want, since a full tree can be large for a big book.

---

- Render a book as a navigation tree.
- Show the full book hierarchy.
- Improve book navigation.
- Let readers see where they are in a book.
- Navigate a large handbook.
- Place a book tree block.
- Replace the default book block.
- Show book structure from any page.
- Build a documentation site on Book.
- Provide whole-of-book navigation.
- Jump around a book's sections.
- Display nested book pages.
- Improve a handbook's UX.
- Depend on core Book.
- Show book branches as a tree.
- Offer better book wayfinding.
- Compare with custom_book_block.
- Render deep book structures.
- Place navigation in a region.
- Support long-form documentation.