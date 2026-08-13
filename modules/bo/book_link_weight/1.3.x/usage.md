<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Book Link Weight swaps the core Book module's numeric weight selector for a drag-and-drop table so editors can visually order pages within a book outline.
---
Core's Book module positions a page among its siblings with a plain "Weight" select element, which is awkward when a book has many pages. This module replaces that control with a familiar tabledrag interface. It implements `hook_form_node_form_alter()` and a broader `hook_form_alter()` (to also catch the standalone `*book_outline_form`), and when a `book` element is present it delegates to the `book_link_weight.form` service (`BookLinkWeightForm`, constructed with the core `book.manager`) which rebuilds the outline widget as a draggable, weighted table.

The module is a pure content-editing UX enhancement: it has no routes, no permissions, no configuration and no database schema of its own. It operates entirely within the existing node add/edit forms, so access is governed by core node and book permissions. Its security surface is effectively nil.
---
- Drag book pages into order instead of setting numeric weights.
- Reorder a long book outline quickly from the node edit form.
- Position a new page relative to its siblings visually.
- Reorder pages directly on the standalone book outline form.
- Give editors a friendlier book management experience.
- Avoid manual weight arithmetic when inserting a page mid-book.
- Rearrange chapters in a documentation book.
- Move a page up or down within its parent without editing numbers.
- Keep book ordering consistent by dragging rather than guessing weights.
- Reduce editor errors from duplicate or conflicting weights.
- Order FAQ or handbook entries stored as a book.
- Preview sibling order while editing a page.
- Speed up restructuring an imported book outline.
- Let non-technical authors manage book order confidently.
- Replace the core weight select on every node/add and edit form.
- Reorder pages under a newly chosen parent.
- Maintain a knowledge base built with core Book.
- Adjust ordering after moving a page to a different book.
