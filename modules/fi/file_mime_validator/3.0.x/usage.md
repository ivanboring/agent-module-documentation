<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
File Mime Validator checks a file upload's **real** MIME type rather than trusting its extension, closing the gap where a script renamed to `.jpg` passes a field's allowed-extensions check.

---

Drupal's file field validates the extension, and the extension is chosen by whoever uploads the file. That is adequate while the allowed list contains only inert types, and inadequate the moment the list widens or the storage is public: a PHP or HTML payload named `photo.jpg` satisfies an extension check completely. This module adds the missing step — inspect the file's actual content type and compare it against what the extension claims. `src/Service` holds the validation logic, `src/Form` the configuration, `config/install` and `config/schema` the per-file-type MIME mappings, all wired through `file_mime_validator.services.yml`. It has no module dependencies and targets core `^10 || ^11`. One defect to be aware of before relying on the UI: the configuration route requires `_permission: "administer"`, which is **not a permission Drupal defines** — there is no `administer` permission in core — so the form at `/admin/config/system/file-mime-validator/file-types-mime-config` is unreachable for every account except user 1, which bypasses permission checks entirely. The validation itself is unaffected; only the settings screen is gated behind a permission that can never be granted.

---

- Reject a PHP script renamed to .jpg.
- Validate the true MIME type of uploads.
- Harden a public file field.
- Stop extension-spoofed uploads.
- Enforce a mapping of extension to MIME type.
- Protect an image field from non-image content.
- Reduce the risk of stored XSS via SVG or HTML.
- Complement Drupal's extension allow-list.
- Meet an upload-security requirement.
- Check documents uploaded by anonymous users.
- Prevent polyglot file uploads.
- Add a validation layer without custom code.
- Audit which MIME types a site accepts.
- Protect a media library from mislabelled files.
- Reduce reliance on server configuration alone.
- Validate uploads on a webform.
- Catch mismatches introduced by a migration.
- Support a penetration-test remediation item.
