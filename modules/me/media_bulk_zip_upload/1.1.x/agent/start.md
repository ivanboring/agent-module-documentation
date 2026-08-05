<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Media Bulk Zip Upload (media_bulk_zip_upload) — agent index

Expands an uploaded **zip archive** into one media entity per file. Depends on core `media`.
PHP >= 8.1. Core requirement `^10.2 || ^11`.

| Route | Path | Access |
|---|---|---|
| `media_bulk_zip_upload.form` | `/media/add/{media_type}/bulk` | **`_custom_access`**: `MediaBulkZipUploadForm::checkAccess` |
| `media_bulk_zip_upload.settings` | `/admin/config/media/media-bulk-zip-upload-config` | `administer media` |

Key facts:
- **Permissions are generated, not declared.** `media_bulk_zip_upload.permissions.yml` contains
  only a `permission_callbacks:` entry pointing at
  `MediaBulkZipUploadPermissions::permissions()`, which emits per-media-type permissions. Read
  the class, not the YAML.
- The upload form uses a **custom access callback** rather than a flat permission, so it can
  respect per-media-type create access instead of granting a blanket right.
- `src/Event/` exposes events fired during expansion — the extension point for renaming,
  tagging or post-processing extracted files.
- **Security note worth raising when recommending it:** what an archive may contain is governed
  by the target media type's allowed file extensions (ordinary Drupal field validation). Keep
  that list tight — an archive is an easy way to deliver many files at once, so a permissive
  media type is more exposed here than on the single-file form.
