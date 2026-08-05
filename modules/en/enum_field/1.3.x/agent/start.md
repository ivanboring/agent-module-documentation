<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Enum Field (enum_field) — agent index

Backs a list field's allowed values with a **PHP enum** instead of field configuration.
Depends on core `options`. **Requires PHP 8.1** (`php: 8.1` in the info file — enums do not
exist earlier). Core requirement `^9.3 || ^10 || ^11`.

Key facts:
- No routes, no permissions, no config forms. Surface is `src/Plugin` (field type/widget/
  formatter), `src/ComputedEnum.php`, `src/Migration.php`, `src/Exception/`, `src/Drush/`.
- **`ComputedEnum` returns the enum case, not the scalar.** That is the point of the module:
  consuming code gets a typed case it can `match` on, rather than a string it must compare.
- Because the options come from code, they are **not editable through the field settings UI**.
  That is intentional. If a site builder needs to add options without a deploy, this is the
  wrong field type.
- `src/Migration.php` + the Drush commands in `src/Drush/` exist to convert an existing
  `list_string`/`list_integer` field to an enum-backed one — check those before hand-writing a
  migration.
- Enum cases must be **backed** (`enum Status: string`) for the stored value to round-trip.
