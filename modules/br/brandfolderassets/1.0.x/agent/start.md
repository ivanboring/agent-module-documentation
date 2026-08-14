<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Brandfolder Assets (brandfolderassets) — agent index

**Field + AJAX modal to browse and import Brandfolder DAM assets.**

- **Version:** 1.0.x · **Core:** ^8.8 || ^9 || ^10 · **Depends:** brandfolder
- **Config:** `/admin/config/media/brandfolderassets` (`administer brandfolderassets settings`).
- **Routes (all `_user_is_logged_in: TRUE`):** `/brandfolderassets/library`, `/brandfolderassets/save`, `/brandfolderassets/pagination/...`, `/brandfolderassets/search/...`.

**Security:** browse/save routes are open to any authenticated user. `AssetsLibrary` echoes `$_GET['field_name']` unescaped into modal HTML (reflected XSS); `AssetsSave` fetches the request-supplied `data_attributes_cdnurl` via `system_retrieve_file()` (SSRF / arbitrary remote download). See [api/endpoints.md](api/endpoints.md).
