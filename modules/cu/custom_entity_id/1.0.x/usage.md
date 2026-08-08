<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Custom Entity Id provides a custom entity id field on the entity create page, letting a specific ID be assigned at creation.

---

Custom Entity Id provides a custom entity-ID field on the entity-create page — letting an editor assign
a specific ID to a new entity rather than relying on the auto-incremented value, useful for migrations,
predictable IDs or matching external systems. It is configured at `custom_entity_id.settings` and provides
its own permissions.

Use it where specific/controlled entity IDs are required at creation. The security/operational note:
assigning entity IDs manually is a **sensitive, admin-level capability** — colliding with existing IDs or
choosing IDs that clash with future auto-increment values can cause integrity issues, and predictable IDs
can aid enumeration; so restrict the permission to trusted users and use it deliberately. It has no
content-access role beyond its permission. Configure which entity types allow custom IDs.

---

- Set a custom entity ID at creation.
- Assign a specific ID to new entities.
- Support migrations/predictable IDs.
- Match external system IDs.
- Configure at custom_entity_id.settings.
- Provide its own permissions.
- Restrict the capability to trusted users.
- Avoid colliding with existing IDs.
- Avoid clashing with future auto-increment.
- Be aware predictable IDs aid enumeration.
- Use it deliberately.
- Have no content-access role beyond permission.
- Configure which entity types allow it.
- Assign IDs manually.
- Control entity IDs.
- Set IDs at create.
- Handle custom IDs.
- Restrict ID assignment.
- Configure custom IDs.
- Assign entity IDs.
