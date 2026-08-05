<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Module Cleanup (module_cleanup) — agent index

Lists and deletes data left behind by uninstalled or deleted modules.
Core requirement `^8 || ^9 || ^10 || ^11 || ^12` — the widest range in this wave.
Form at `/admin/config/system/delete-transient-module-data`, permission
`delete transient module data`.

Key facts:
- **The problem is real:** `hook_uninstall()` removes only what a module chooses to, and a module
  deleted from the codebase without being uninstalled leaves everything behind with nothing left
  to clean it. The residue travels in every database dump.
- **Deletion is irreversible and ownership is inferred from naming.** Review the list rather than
  accepting it wholesale, take a backup, and be careful where a name prefix is shared between a
  removed module and one still installed.
- Complements the storage-reclamation group in this campaign — `cleaner` (wave 67),
  `revision_cleanup` (wave 62), `orphans_media` (this wave) — all with the same "decide
  deliberately, back up first" caveat.
