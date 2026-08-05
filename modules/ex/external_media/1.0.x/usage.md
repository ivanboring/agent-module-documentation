<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
External Media adds a field widget that lets editors pick a file straight from Dropbox, Google Drive, OneDrive or Box instead of downloading it to their machine and uploading it again.

---

The module defines its own `ExternalMedia` plugin type — one plugin per provider, in `src/Plugin/ExternalMedia/`: `Dropbox.php`, `GoogleDrive.php`, `OneDrive.php` and `Box.php`, over a shared `ExternalMediaBase`, discovered by `ExternalMediaManager`. Two field widgets (`ExternalMediaFile`, `ExternalMediaImage`) expose the picker on file and image fields, backed by a form element in `src/Element` and per-provider JavaScript (`dropbox.js`, `onedrive.js`, `core.js`) that runs each vendor's own file-picker dialog in the browser. Permissions are generated rather than declared: `ExternalMediaController::permissions()` iterates the plugin definitions and creates one `upload from <plugin_id>` permission per provider, **but only for plugins whose `classExists()` returns true** — a provider whose SDK is absent contributes no permission and simply does not appear. Configuration at `/admin/config/media/external-media` holds each provider's `client_id` / `app_id`, which are public browser-side identifiers rather than secrets, though the OAuth app they belong to still needs its origins and redirect URIs locked down. One route deserves a second look: `external_media.redirect_callback` at `/external-media/redirect/{external_media}` is declared `_access: 'TRUE'` — deliberately open, because it is the OAuth return leg the provider redirects into, and the param converter plus the provider's own state validation are what constrain it. The module targets `^10.6 || ^11.3 || ^12`, so it is a recent, forward-looking release.

---

- Let editors attach a file from Dropbox without downloading it first.
- Pull an image from Google Drive into a media field.
- Use OneDrive as the source for document uploads.
- Attach a file from Box to a node.
- Avoid round-tripping large files through a laptop.
- Give each cloud provider its own permission.
- Enable only the storage services an organisation uses.
- Speed up editorial workflows for large assets.
- Keep source files in a team's existing cloud storage.
- Offer a familiar file picker inside Drupal.
- Restrict Dropbox access to one editorial role.
- Add a provider by writing an ExternalMedia plugin.
- Reduce upload failures on slow connections.
- Standardise where an organisation's media originates.
- Support editors working on managed devices without local storage.
- Configure provider client IDs from one settings page.
- Attach the same cloud file to several nodes.
- Replace an ad-hoc "paste a share link" convention.
- Migrate assets gradually from cloud storage into Drupal.
- Give an image field a cloud-backed widget.
