<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Views Order By Delta lets a view sort by a multi-value field's **delta** — the position an editor put each value in — so a listing built from a reference field respects the order that was chosen rather than reordering by title or date.

---

When an editor drags five referenced items into a deliberate order on a node's edit form, that order is stored as the field's delta. Views can join to the field and show the referenced entities, but its sort options are the *referenced entity's* properties — title, created date, node ID — none of which is the order the editor chose. The result is a listing that ignores an explicit editorial decision, and the usual workarounds are a weight field on the referenced entity (wrong, because the order is per-reference, not global) or Entityqueue (a whole ordering system for one field). This module adds the missing sort handler: `src/Plugin` supplies it and `views_order_by_delta.views.inc` registers it with Views, with core `views` the only dependency. The release is **3.0.0-alpha2** and the core range is `^8.9 || ^9 || ^10 || ^11`. It applies wherever deltas exist — entity references, multi-value text, paragraphs — so any field whose order was chosen deliberately can drive a listing.

---

- Sort a view by the order an editor chose.
- Respect drag-and-drop order from a reference field.
- List related items in their stored sequence.
- Avoid a weight field on referenced entities.
- Show featured items in editorial order.
- Order paragraphs by their position.
- Build a curated listing from a reference field.
- Keep author-chosen ordering in a Views block.
- Sort multi-value text values by position.
- Avoid Entityqueue for a single field.
- Show a manually ordered team list.
- Respect ordering in an exported feed.
- Sort a gallery by the editor's arrangement.
- Keep listing order consistent with the edit form.
- Order a related-links block deliberately.
- Combine delta sort with other sorts.
- Show steps of a process in order.
- Preserve curation in a Views display.
