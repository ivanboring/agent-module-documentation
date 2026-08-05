<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Menu Pager (menu_pager) — agent index

Previous/next links derived from a **menu's structure and order**. No dependencies.
Version **3.0.4**. Core requirement `^10 || ^11`.

**Why menu order beats creation date** — the usual source for sequence navigation. A handbook's
chapters, a guidance section's pages, a course's lessons and a policy document's parts each have an
order **somebody chose**, and it is already expressed in the menu, because that is how the visitor
navigates the section. Deriving the pager from it means the two **agree by construction** —
reorder the menu and the pager follows, with nothing to keep in step.

**Three things to expect:**
1. **Hierarchy has to be resolved.** Is "next" from the last child of a section its **sibling** or
   **nothing**? A pager stopping at each branch feels broken; one jumping across the tree can be
   disorienting. Establish which it does.
2. **Menu links respect access.** A link the current user may not see must be **skipped**, not
   rendered as a dead end. That is the correctness requirement here.
3. **Cache metadata must include the menu's cache tags**, or a reordered menu leaves stale links —
   the classic quiet failure for menu-derived blocks.

Compare `pager` (wave 74), which derives the sequence from content rather than from a menu.
