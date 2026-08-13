<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Book Link Weight (book_link_weight) — agent index

**Replaces the core Book outline "weight" select with a drag-and-drop (tabledrag) ordering table on node forms.**

- **Version:** 1.3.x
- **Core:** ^8 || ^9 || ^10 || ^11
- **Dependencies:** `book` (core)
- **Mechanism:** `hook_form_node_form_alter()` and `hook_form_alter()` (matches `*book_outline_form`) call the `book_link_weight.form` service when a `book` element is present.
- **Service:** `book_link_weight.form` (`BookLinkWeightForm`, args `@book.manager`).
- **Routes/permissions/config/schema:** none of its own.

**Security:** no routes, permissions, endpoints, config or DB writes; a pure node-form UX alter gated entirely by core node/book permissions. No security-relevant surface.
