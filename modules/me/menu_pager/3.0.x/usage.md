<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Menu Pager adds previous/next links derived from a menu's structure, so a visitor can move through a section in the order the menu defines.

---

Sequence navigation needs a definition of the sequence, and most implementations take it from creation date — which is right for a blog and wrong for everything that has been deliberately ordered. A handbook's chapters, a guidance section's pages, a course's lessons, a policy document's parts: each has an order somebody chose, and that order is already expressed in the menu, because the menu is how the visitor navigates the section in the first place. Deriving previous/next from the menu means the two agree by construction — reorder the menu and the pager follows, with nothing to keep in step. Version **3.0.4** on core `^10 || ^11`, no dependencies. Three things to expect. **Hierarchy has to be resolved**: whether "next" from the last child of a section is that section's sibling or nothing at all is a design decision, and a pager that stops at the end of each branch feels broken while one that jumps across the whole tree can be disorienting — establish which it does. **Menu links respect access**, so a link the current user may not see must be skipped rather than rendered as a dead end, which is the correctness requirement here. And **the pager varies by menu and by position**, so its cache metadata must include the menu's cache tags or a reordered menu leaves stale links behind, which is the classic quiet failure for menu-derived blocks.

---

- Add previous/next links to a handbook.
- Navigate guidance pages in order.
- Move through a course's lessons.
- Follow a policy document's parts.
- Derive sequence from the menu.
- Keep navigation and menu in step.
- Add a pager to a documentation section.
- Navigate a manual's chapters.
- Move through an onboarding sequence.
- Follow a step-by-step guide.
- Add sequence links to a section.
- Navigate a report's chapters.
- Move through a curriculum.
- Add next-page links to a wizard-like section.
- Follow a legislated procedure's steps.
- Navigate a knowledge base branch.
- Keep readers moving through a section.
- Reorder navigation without touching content.
