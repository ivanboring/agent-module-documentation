<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Orphans Media finds media entities that nothing references and offers to delete them, reclaiming the storage a long-running site accumulates in unused uploads.

---

Media libraries grow in one direction. An editor uploads three versions of an image and uses one; a node referencing a document is deleted and the document stays; a migration imports assets that were never placed. None of it is visible, all of it is backed up and moved between environments, and on an older site it can be most of the file storage. This module surfaces the unreferenced items at `/admin/config/media/orphans-media` behind an `access orphans media delete` permission and deletes what is chosen. The important caution is about what "orphan" can detect. Reference tracking finds media referenced by **entity reference fields**; it does not reliably find media referenced from inside **rich-text fields** as an embedded entity, from **Layout Builder** section configuration, from a **serialised setting**, or from another module's own tables. A media item used only in one of those ways looks orphaned and is not — so treat the list as candidates for review rather than a delete queue, take a backup, and check what the site actually uses to reference media before running it. Deletion is irreversible, and a missing image on a live page is a visible failure.

---

- Find media nothing references.
- Reclaim storage from unused uploads.
- Clean up after a migration.
- Reduce backup size.
- Tidy a media library grown over years.
- Identify duplicate uploads.
- Review unreferenced documents.
- Free disk space on a small host.
- Prepare a site for a move.
- Reduce media library clutter.
- Audit which assets are in use.
- Delete leftover files after content removal.
- Reduce time to restore a backup.
- Support a storage cost reduction.
- Find assets imported but never placed.
- Clean up test media.
- Restrict cleanup to a trusted role.
- Report on unused media.
