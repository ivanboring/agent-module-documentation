<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Custom Permissions lets admins define named custom permissions via a dedicated UI.

---

Custom Permissions provides an admin interface (a config-entity list) to define and manage custom permission strings that other configuration can then reference. It lets administrators create named permissions through a dedicated page rather than in code.

It only registers permission definitions (via a permission_callbacks provider); it does not grant permissions to users — assignment still happens through core's role/permission system (`administer permissions`). All its routes are gated by `administer custom_permissions`, which is itself powerful — restrict it to full administrators. Supports Drupal 9, 10, and 11.

---

- Define custom permissions via a UI.
- Manage named permission strings.
- Register permissions as config.
- Reference them from other config.
- Create permissions without code.
- Not grant permissions to users.
- Leave assignment to core's role system.
- Gate routes with `administer custom_permissions`.
- Restrict that permission to full admins.
- Support Drupal 9, 10, and 11.
- Provide a config-entity list.
- Add permissions through a page.
- Complement core permissions.
- Manage permission definitions.
- Support custom access schemes.
- List custom permissions.
- Edit permission entries.
- Keep assignment in core.
