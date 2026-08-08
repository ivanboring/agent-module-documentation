<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Remove system.schema key/value (rmkv) provides Drush commands to delete `system.schema` key/value entries left behind when a module's code is gone but its schema record is not — the state that makes Drupal complain about a missing module it can no longer uninstall.

---

There is a specific, maddening failure state in Drupal maintenance: a module was removed from the codebase (deleted from `modules/`, dropped from composer) without being uninstalled first. Its code is gone, but its entry in the `system.schema` key/value store remains. Drupal now knows about a module it cannot find — update runs warn, `drush pm:uninstall` cannot act because there is no code to run `hook_uninstall()`, and the site carries a phantom dependency.

The correct fix is surgical: delete the orphaned `system.schema` entry directly. Doing that by hand means a raw key/value delete against the database, which is exactly the kind of manual surgery that is easy to get wrong. This module packages it as Drush commands, so the operation is named, repeatable and less error-prone than a hand-written query.

That also makes it a **maintenance and recovery tool, not a site feature** — it belongs in a developer's or operator's toolkit, run deliberately when this situation arises, not left enabled as part of a site's normal function. Because it deletes schema bookkeeping, use it only when you understand which entry is orphaned; removing the wrong key would tell Drupal a still-present module is uninstalled. This campaign's own workflow notes describe the same orphaned-schema state as a recovery scenario; this module is one way to resolve it.

---

- Remove an orphaned system.schema entry.
- Fix "module is missing" after deleting code.
- Recover from a module removed without uninstall.
- Clear a phantom module dependency.
- Stop update warnings about a gone module.
- Delete a stale schema key via Drush.
- Avoid a raw database key/value delete.
- Package schema surgery as a command.
- Clean up after an aborted uninstall.
- Resolve a half-removed module.
- Run it as a recovery step.
- Keep it in an operator toolkit.
- Confirm which entry is orphaned first.
- Repair a broken update path.
- Remove a schema record with no code.
- Undo a code-first module deletion.
- Script the fix across environments.
- Diagnose a missing-module error.
- Restore a clean module list.
- Use it deliberately, not as a feature.