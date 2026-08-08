<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
A form-based UI for the same operation the parent **rmkv** module exposes as Drush commands: removing orphaned `system.schema` key/value entries for modules whose code is gone but whose schema record remains.

---

The parent module fixes the "Drupal knows about a module it can no longer find" state — code deleted without an uninstall, leaving a phantom `system.schema` entry. Its interface is Drush, which suits an operator on the command line. This submodule adds the screen version for the same job, so the cleanup can be done from the admin UI when CLI access is inconvenient or the person doing it works in the browser.

It is the same surgical operation with the same caution attached: deleting a schema record tells Drupal that module is uninstalled, so removing the wrong entry would misreport a still-present module. A form makes the operation more discoverable and also easier to invoke carelessly, so it belongs behind a tight permission and in the hands of someone who understands which entry is genuinely orphaned. Like the parent, it is a recovery tool to enable when needed rather than a standing site feature.

---

- Remove an orphaned system.schema entry from a form.
- Fix a phantom module without Drush.
- Clean up a code-first module deletion in the UI.
- Recover from a module removed without uninstall.
- Use the browser instead of the CLI.
- Clear a stale schema key.
- Stop update warnings about a gone module.
- Resolve a half-removed module.
- Confirm which entry is orphaned first.
- Keep the form behind a tight permission.
- Enable it only when needed.
- Pair with the parent rmkv module.
- Undo an aborted uninstall.
- Repair a broken update path.
- Restore a clean module list.
- Use deliberately, not as a feature.