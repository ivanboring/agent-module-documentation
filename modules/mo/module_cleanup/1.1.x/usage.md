<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Module Cleanup finds data left behind by modules that were uninstalled or deleted, and lets an administrator remove it.

---

Uninstalling a Drupal module runs its `hook_uninstall()`, and what that removes is up to the module. Well-behaved ones clear their state, key-value entries and schema; plenty do not, and a module removed from the codebase without being uninstalled first — which happens whenever someone deletes a directory or a composer update drops a package — leaves everything behind with nothing left to clean it. The residue is invisible, travels in every database dump, and occasionally causes real confusion when a module is later reinstalled and finds stale data. This module lists what it can find at `/admin/config/system/delete-transient-module-data` behind a `delete transient module data` permission and offers to delete it. Its core range of `^8 || ^9 || ^10 || ^11 || ^12` is the widest in this wave. The obvious caution: deleting state and key-value data for something you believe is gone is irreversible, and the module can only guess at ownership from naming — so take a backup, review the list rather than accepting it wholesale, and be especially careful where a name is shared between a removed module and one still installed.

---

- Remove data left by an uninstalled module.
- Clean up after a deleted module directory.
- Shrink a database dump.
- Find orphaned key-value entries.
- Tidy a long-lived site's state table.
- Clean up after a failed module trial.
- Reduce confusion on reinstall.
- Audit leftover module data.
- Prepare a site for a migration.
- Remove residue from a legacy module.
- Reduce database clutter.
- Clean up after a distribution change.
- Free space in the state table.
- Support a site consolidation.
- Remove stale schema entries.
- Restrict cleanup to a permission.
- Tidy before a security audit.
- Reduce noise when debugging.
