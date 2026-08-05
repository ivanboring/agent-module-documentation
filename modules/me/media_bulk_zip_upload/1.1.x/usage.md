<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Media Bulk Zip Upload lets an editor upload one zip archive and have every file inside it become a separate media entity, instead of adding hundreds of images one at a time.

---

Populating a media library from an existing folder of assets is a chore the media library was not designed for, and the workarounds — a migration, a Drush script, or an afternoon of clicking — are all disproportionate for what is conceptually one action. This module adds a bulk form at `/media/add/{media_type}/bulk`, alongside the normal media add form, that accepts an archive and expands it into media entities of the chosen type. Two design details are worth noting. Access to the bulk form uses a **`_custom_access`** callback (`MediaBulkZipUploadForm::checkAccess`) rather than a flat permission, so it can respect per-media-type create access rather than granting a blanket right; and the permissions themselves are **generated** by `MediaBulkZipUploadPermissions::permissions()` through a `permission_callbacks` entry, which means they are per media type and will not be found by grepping the YAML. A settings form at `/admin/config/media/media-bulk-zip-upload-config` sits behind `administer media`, and `src/Event` exposes events for reacting to the expansion. Requirements are PHP 8.1+, core `media`, and core `^10.2 || ^11`. As with any archive expansion, the file-extension rules of the target media type are what stand between the archive and unwanted file types — that check belongs to Drupal's field validation, so keep the media type's allowed extensions tight.

---

- Populate a media library from a zip of images.
- Import a folder of documents in one action.
- Avoid uploading hundreds of files individually.
- Migrate assets from a shared drive.
- Let editors bulk-load a photo shoot.
- Restrict bulk upload per media type.
- React to bulk creation with an event subscriber.
- Seed a new site's media library.
- Upload a batch of PDFs as media.
- Reduce editor time on asset loading.
- Import assets exported from another CMS.
- Grant bulk upload to one editorial role.
- Load a product image set.
- Add many files without a migration.
- Keep media type validation in force.
- Bulk load audio or video assets.
- Prepare a media library before launch.
- Refresh a gallery from a new archive.
