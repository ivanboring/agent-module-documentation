<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# External Media (external_media) — agent index

Field widget for picking files from **Dropbox, Google Drive, OneDrive and Box**. Depends on core
`file`. Core requirement `^10.6 || ^11.3 || ^12`. Configure at
`/admin/config/media/external-media` (`configure: external_media.settings`).

Key facts:
- Defines its own plugin type **`ExternalMedia`** (`src/Plugin/ExternalMediaManager.php`,
  `ExternalMediaBase`, `ExternalMediaInterface`, plus `src/Annotation` and `src/Attribute`).
  Providers ship as `src/Plugin/ExternalMedia/{Dropbox,GoogleDrive,OneDrive,Box}.php`. Adding a
  provider means adding a plugin — no core patching.
- Two widgets: `ExternalMediaFile` and `ExternalMediaImage`, over a form element in
  `src/Element`, with per-provider JS (`js/dropbox.js`, `js/onedrive.js`, `js/core.js`) that
  drives each vendor's own picker dialog client-side.
- **Permissions are generated, not declared.** `external_media.permissions.yml` is just a
  `permission_callbacks` entry pointing at `ExternalMediaController::permissions()`, which emits
  one `upload from <plugin_id>` permission per plugin — **only where `$plugin->classExists()`**.
  So a provider whose SDK/class is missing yields *no permission at all* and silently disappears
  from the permissions page. That is the first thing to check when an expected provider is
  absent.
- Routes:

  | Route | Path | Requirement |
  |---|---|---|
  | `external_media.settings` | `/admin/config/media/external-media` | `administer site configuration` |
  | `external_media.redirect_callback` | `/external-media/redirect/{external_media}` | **`_access: 'TRUE'`** |

  The open callback is intentional — it is the OAuth return leg the provider redirects into, so
  it cannot require a Drupal permission. It is constrained by the
  `paramconverter.external_media` param converter and the provider's own state validation, not
  by Drupal access. Treat changes to either as security-relevant.
- Credentials stored in settings are `client_id` / `app_id` values (Box, Google Drive, OneDrive)
  — browser-side public identifiers, not secrets. The protection that matters lives in the
  provider's OAuth app configuration: lock down allowed origins and redirect URIs there. Any
  genuine client *secret* should follow this repo's rule — environment variable via
  `ddev dotenv set`, surfaced through a Key entity, never committed.
