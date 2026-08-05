<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# File Mime Validator (file_mime_validator) — agent index

Validates an upload's **real** MIME type against its claimed extension. No module dependencies.
Core requirement `^10 || ^11`.

Key facts:
- **Defect: the configuration form is unreachable.**
  `file_mime_validator.routing.yml` gates
  `/admin/config/system/file-mime-validator/file-types-mime-config` with:

  ```yaml
  requirements:
    _permission: "administer"
  ```

  Drupal defines **no permission named `administer`**. `hasPermission('administer')` is false for
  every account, so only user 1 — which bypasses permission checks — can reach the form. Nothing
  can be granted to fix this; it needs a code change (`administer site configuration`, or a
  permission the module declares). The module ships **no `permissions.yml`** at all.
  The validation itself still runs; only the settings screen is affected. Configure via
  `drush cset file_mime_validator.settings …` in the meantime.
- Surface: `src/Service/` (validation), `src/Form/FileTypesMimeConfig.php`,
  `file_mime_validator.services.yml`, `config/install`, `config/schema`,
  `file_mime_validator.module`.
- Conceptually this is defence in depth *behind* Drupal's extension allow-list, not a
  replacement for it. Keep the allow-list narrow as well — an accurate MIME check on a type you
  should never have accepted does not help.
