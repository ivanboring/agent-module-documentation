<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Default Content Access exports/imports content_access settings with default content.

---

Default Content Access **exports/imports Content Access settings with Default Content** — so when you export
content as Default Content (for a recipe/install profile), the per-node/per-type **Content Access** permission
settings travel with it. It depends on the Default Content and Content Access modules, in the Web services
package.

Use it to ship access settings with default content. It is a developer/devops helper — it doesn't itself decide
access; it **serializes the Content Access module's settings** so they're reproduced on import. Review that the
exported access settings are correct before shipping them (you're distributing access configuration). It has no
runtime access-control role of its own. Configure the Default Content export.

---

- Export/import content_access settings.
- Ship access settings with default content.
- Support recipes/install profiles.
- Depend on Default Content and Content Access.
- Serve developers/devops.
- Serialize access settings.
- NOT decide access itself (config helper).
- Reproduce Content Access settings on import.
- Review exported access settings before shipping.
- Have no runtime access-control role of its own.
- Configure the Default Content export.
- Handle access-settings export.
- Export access.
- Configure the export.
- Import settings.
- Handle the integration.
- Ship access config.
- Serialize access.
- Review the config.
- Provide access-settings export.
