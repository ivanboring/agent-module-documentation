<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Enhanced Taxonomy Manager replaces core's term overview page with a collapsible drag-and-drop tree built for vocabularies large enough that core's page stops being usable, and adds revisions, undo, snapshots, bulk operations and CSV import/export around it.

---

Core's taxonomy overview is a flat weighted list that loads every term at once. That is fine for fifteen countries and unworkable for fifteen thousand medical subject headings — the page becomes slow, the drag handles become useless, and reordering becomes a thing nobody attempts twice.

This module rebuilds that surface. The tree loads children on demand and has a load-more endpoint, so depth costs nothing up front. Around it sit the operations a real taxonomy programme needs: rename, merge, clone, find-and-replace with a preview step, orphan repair, duplicate detection, usage counts, per-vocabulary statistics and a health check. Changes are undoable, and a **snapshot** can be saved and restored — which is the feature that makes bulk work on a production vocabulary defensible rather than reckless.

Roughly forty routes back this, almost all of them AJAX endpoints, and **the access control on them is careful — unusually so for a module this size.** All but a handful run through `EtmAccessCheck`, which grants `administer taxonomy` globally and otherwise falls back to a per-vocabulary `etm manage terms in {vid}` permission. Term-scoped routes carry no vocabulary parameter, so the check derives the vocabulary from the term's bundle; the source comments that without this, the per-vocabulary permission would have granted the tree page and nothing else. Export and import have their own permissions, and the delete route defers to core's `_entity_access: 'taxonomy_term.delete'`. Cache metadata is attached correctly on every branch.

An `etm_ai` submodule adds AI-driven term generation, placement suggestions, semantic duplicate detection, auto-description, health analysis and natural-language search. It is a separate enable.

---

- Manage a taxonomy with thousands of terms.
- Reorder terms by drag and drop.
- Load a deep hierarchy without loading every term.
- Rename a term in place.
- Merge two terms.
- Clone a term.
- Find and replace across a vocabulary with a preview.
- Detect duplicate terms.
- Repair orphaned terms.
- Undo a taxonomy change.
- Save a snapshot before a bulk edit.
- Restore a vocabulary from a snapshot.
- Run a vocabulary health check.
- Export a vocabulary to CSV.
- Bulk import terms.
- See how often a term is used.
- Delegate one vocabulary to an editor without administer taxonomy.
- Grant export access separately from edit access.