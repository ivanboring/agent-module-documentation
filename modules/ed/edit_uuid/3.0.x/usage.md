<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Edit UUID exposes an entity's UUID on its edit form so a permitted user can set it — the tool for making UUIDs match across environments when content is deployed or synchronised rather than migrated.

---

Drupal assigns every entity a UUID at creation, and treats it as the stable identity used by JSON:API, content deployment tools, default content and configuration dependencies. That works until the same logical content exists in two places with different UUIDs — content recreated by hand on production, an entity restored from a partial backup, a default-content export whose target already exists — at which point the tools that match on UUID see two different things. This module lets that be corrected: an `edit_uuid_config` configuration entity at `/admin/config/development/edit-uuid-config` controls which entity types and bundles expose the field, with `EditUuidConfigAccessControlHandler`, a list builder and storage handler supporting it. Three permissions separate configuring the module, showing the UUID on a form, and editing it. All three are declared **`restrict access: false`**, which is worth pausing on: changing a UUID rewrites the identity other systems match on, so a JSON:API consumer, a deployment tool or a config dependency pointing at the old value stops resolving. Whatever the flag says, treat `edit edit_uuid` as a migration-window permission rather than a standing grant. Requirements are PHP 8.1+ and core `^10 || ^11`.

---

- Align a UUID between staging and production.
- Fix content that was recreated with a new UUID.
- Match an entity to a default-content export.
- Restore identity after a partial backup restore.
- Keep a JSON:API consumer's references valid.
- Set a UUID during a content deployment.
- Show UUIDs on entity forms for debugging.
- Choose which bundles expose the field.
- Reconcile two environments' content.
- Support a content-sync workflow.
- Repair a broken config dependency.
- Match entities imported from another site.
- Give a migration a stable identifier.
- Diagnose a duplicated entity.
- Recreate an entity with its original identity.
- Restrict UUID editing to specific bundles.
- Support a phased content migration.
- Correct a UUID collision.
