<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Contextual menu block (contextual_menu_block) — agent index

Renders the part of a menu relevant to the **current page** — the section the visitor is in, rather
than the whole tree. No dependencies. Version **1.3.0**. Core requirement `^9 || ^10 || ^11`.

**What it replaces:** core's menu block starts from a **fixed level**, which is right for main
navigation and wrong for section navigation. The usual workaround is **one block per section with
path visibility conditions** — eight blocks, eight condition sets, and a ninth section nobody
remembers to configure.

**Three things matter for correctness:**
1. **The active trail must be right.** It is, for pages that are menu links; it is not for pages
   reached another way — a view, a taxonomy page, a node with no menu entry. **Decide what those
   pages show** rather than discovering it.
2. **Menu links respect access.** A subtree must be filtered by what the current user may see, and
   an **empty section for one role is a legitimate outcome**, not a bug.
3. **Cache contexts are what breaks.** A block whose content depends on the current route **must
   declare that**, or the first visitor's section navigation is cached and served to everyone —
   exactly the failure that makes contextual blocks look intermittently broken.
