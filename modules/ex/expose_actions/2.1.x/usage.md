<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Expose Actions surfaces core action entities as clickable local actions gated by per-action permissions.

---

Expose actions as local actions surfaces Drupal core action entities (the reusable action plugins used by Views Bulk Operations etc.) as local actions in the UI, letting a user run an action on an entity via a confirmation form. Each exposed action gets its own `access exposed action <id>` permission.

Access requires the per-action permission plus **`view`** access to the target entity; execution goes through a confirm form (CSRF-protected). Note the access check is `view`-only regardless of the action's effect — so if an admin exposes a destructive action (delete/unpublish) and grants its permission, holders can run it on any entity they can view, independent of the action's own update/delete access. Expose destructive actions deliberately and grant their permissions narrowly. Depends on core `action`; supports Drupal 10 and 11.

---

- Expose core actions as local actions.
- Run an action via a confirm form.
- Gate each action with `access exposed action <id>`.
- Require `view` access to the entity.
- Protect execution with a CSRF form token.
- Note the check is `view`-only regardless of effect.
- Expose destructive actions deliberately.
- Grant action permissions narrowly.
- Depend on core `action`.
- Support Drupal 10 and 11.
- Surface actions in the UI.
- Execute actions on entities.
- Reuse core action plugins.
- Provide per-action permissions.
- Confirm before executing.
- Support ad-hoc action runs.
- Trigger actions by URL (confirm form).
- Add local action links.
