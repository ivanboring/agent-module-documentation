<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Contextual menu block renders the part of a menu relevant to the current page — the section the visitor is in, rather than the whole tree.

---

Core's menu block shows a menu from a fixed starting level, which works for a main navigation and fails for section navigation. A site with eight top-level sections, each with its own subtree, wants a sidebar showing *this* section's pages — and core's options are a fixed level (which shows the wrong section's children on every page except one) or the whole menu (which shows everything). The usual workaround is one block per section with visibility conditions on paths, which is eight blocks, eight sets of conditions, and a ninth section nobody remembers to configure. A block that resolves its subtree from the active trail replaces all of it with one placement. Version **1.3.0** on core `^9 || ^10 || ^11`, no dependencies. Three things matter for correctness. **The active trail must be right**, which it is for pages that are menu links and is not for pages reached another way — a view, a taxonomy page, a node with no menu entry — so decide what those pages show rather than discovering it. **Menu links respect access**, so a subtree must be filtered by what the current user may see, and an empty section for one role is a legitimate outcome rather than a bug. And **cache contexts are the thing that breaks**: a block whose content depends on the current route must declare that, or the first visitor's section navigation is cached and served to everyone — which is exactly the failure that makes contextual blocks look intermittently broken.

---

- Show the current section's menu.
- Build sidebar navigation per section.
- Avoid one block per section.
- Show child pages of the current page.
- Navigate a documentation section.
- Show a subtree from the active trail.
- Build contextual navigation for a handbook.
- Show sibling pages in a sidebar.
- Reduce block configuration overhead.
- Navigate a large site's sections.
- Show a department's pages.
- Build a course's navigation panel.
- Show relevant menu items only.
- Support a deep site structure.
- Replace path-based block visibility.
- Show a section's index in context.
- Build in-section navigation automatically.
- Support a policy library's structure.
