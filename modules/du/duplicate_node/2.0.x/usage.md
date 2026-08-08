<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Duplicate Node Layout & Block duplicates a node with its Layout Builder layout and associated blocks, cloning the full page structure.

---

Duplicate Node Layout & Block duplicates a node together with its Layout Builder layout and associated
blocks — so cloning a node also reproduces its full page structure (the Layout Builder sections/components
and inline blocks), not just the field values. This is useful for creating new pages from a
layout-heavy template node. It depends on core Node and Layout Builder and provides its own permissions.

Use it to clone layout-built pages as a starting point. It is a content-editing/cloning feature; the
duplicate is new content governed by normal node access, and the clone action is gated by its permission
(who can duplicate). Ensure the permission is granted appropriately, since duplicating creates content.
Use it to duplicate layout-built nodes.

---

- Duplicate a node with its layout.
- Clone Layout Builder sections/blocks.
- Reproduce full page structure.
- Clone layout-heavy template nodes.
- Depend on Node and Layout Builder.
- Provide its own permissions.
- Create pages from a template node.
- Govern duplicates by node access.
- Gate the clone by permission.
- Grant the permission appropriately.
- Clone inline blocks too.
- Duplicate the layout.
- Reproduce components.
- Start from a layout node.
- Clone page structure.
- Handle layout-built cloning.
- Duplicate content with layout.
- Configure the permission.
- Clone full pages.
- Duplicate layout nodes.
