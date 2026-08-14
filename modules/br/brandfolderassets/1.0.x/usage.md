<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Brandfolder Assets lets editors pick media from the Brandfolder digital-asset-management service and attach it to content via a field.

---
The module adds a field type/widget/formatter and an AJAX modal (`BrandFolderAssetsController`) that lists Brandfolder assets using the `brandfolder` module's API key, with pagination and search. Selecting an asset calls `/brandfolderassets/save`, which downloads the chosen asset's CDN URL to the local files directory with `system_retrieve_file()`. A settings form at `/admin/config/media/brandfolderassets` toggles the popup title/extension display and button label.

Security notes to report: the browse routes require only `_user_is_logged_in: TRUE`; `AssetsLibrary()` reads `$_GET['field_name']`/`field_name_delta` and concatenates them unescaped into the modal HTML (reflected-XSS surface), and `AssetsSave()` passes the request-supplied `data_attributes_cdnurl` straight into `system_retrieve_file()` (server-side fetch of a user-controlled URL — SSRF/arbitrary download, available to any authenticated user). Setup: configure the Brandfolder API key/brandfolder in the `brandfolder` module, then add the Brandfolder Assets field to a content type.
---
- Add a Brandfolder Assets field to a content type.
- Browse the Brandfolder library in a modal.
- Search assets by type and value.
- Paginate through large asset collections.
- Import an image from Brandfolder into Drupal files.
- Import a PDF or video thumbnail.
- Configure default brandfolder and collection (via `brandfolder`).
- Toggle asset title display in the popup.
- Toggle asset extension display.
- Change the field's insert-button label.
- Restrict the widget to logged-in editors.
- Show CDN-hosted thumbnails in the picker.
- Store the selected asset as a managed file.
- Reference the asset's CDN URL with the plain formatter.
- Audit which users can trigger server-side file fetches.
- Review the `field_name` reflection before exposing to untrusted editors.
