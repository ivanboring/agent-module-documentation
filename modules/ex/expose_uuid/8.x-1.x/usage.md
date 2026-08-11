<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Expose UUID exposes the entity UUID in edit forms.

---

Expose UUID **shows (and allows editing) the entity UUID on edit forms** — adding a UUID field to entity edit
forms for users who have the `edit uuid` permission, useful for support/migration workflows that need to see or set
UUIDs. It provides its own permissions, in the Admin package.

Use it to view/set UUIDs on entities. It is an administration/developer utility. Security/data-integrity note: it
is gated by the **`edit uuid` permission**, and it doesn't just display the UUID — it lets the value be **changed**.
An entity's UUID is a stable identifier used by references, config sync, JSON:API and integrations, so **changing
it can break those relationships**; grant `edit uuid` only to trusted administrators and change UUIDs deliberately.
It has no broader access-control role. Configure the `edit uuid` permission.

---

- Show the UUID on edit forms.
- Allow editing the UUID.
- Aid support/migration.
- Provide its own permissions.
- Serve administration.
- Expose the UUID field.
- GATE it by the 'edit uuid' permission.
- Let the UUID be CHANGED (not just displayed).
- BREAK references/config-sync/JSON:API if the UUID is changed.
- Grant 'edit uuid' only to trusted admins + change deliberately.
- Have no broader access-control role.
- Configure the 'edit uuid' permission.
- Handle UUID exposure.
- Show UUIDs.
- Configure the permission.
- Edit UUIDs.
- Handle the form.
- Set UUIDs.
- Restrict the permission.
- Provide UUID exposure.
