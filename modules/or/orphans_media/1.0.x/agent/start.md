<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Orphans Media (orphans_media) — agent index

Finds and deletes media entities nothing references. Depends on core `media`.
Core requirement `^10 || ^11`.
Form at `/admin/config/media/orphans-media`, permission `access orphans media delete`.

> **Treat the list as candidates for review, not a delete queue.** Reference tracking finds media
> referenced by **entity reference fields**. It does **not** reliably find media referenced from:
> - inside **rich-text fields** as an embedded entity,
> - **Layout Builder** section configuration,
> - **serialised settings**,
> - another module's own tables.
>
> A media item used only that way looks orphaned and is not. Deletion is irreversible and a
> missing image on a live page is a visible failure — take a backup, and establish how the site
> actually references media before running it.

Key facts:
- Its own permission rather than `administer media`, so cleanup can be delegated — but given the
  above, it should not be delegated widely.
- Pairs with `revision_cleanup` (wave 62) and `cleaner` (wave 67) as the storage-reclamation
  group; the same "decide retention deliberately" point applies to all three.
