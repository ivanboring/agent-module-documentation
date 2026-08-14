<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Views Share (views_share) — agent index

**Share/embed/oEmbed/preview endpoints + a "Share" Views area handler for embedding any View display externally.**

- **Version:** 2.0.x (2.0.0) · **Core:** ^10 || ^11 · **Depends:** views
- **Routes (all `_permission: 'access content'`):** `/view/{view_id}/{display_id}/share` (modal), `/embed`, `/oembed`, `/preview`.
- **Controller:** `ViewsShareController`; helper `ViewsShareHelper` (embed URL/HTML); area plugin `ShareArea`.
- **Permissions:** none of its own.
- **Security — view-access bypass on preview:** `embed()` and `oembed()` DO call `$view->access($display_id)` (`ViewsShareController.php:216,375`), but **`preview()` does not** (`ViewsShareController.php:174-198`) — it executes and renders the view for anyone with `access content`, bypassing the display's own Views access plugin and potentially disclosing a restricted view's data. `modal()` renders only the share form. Treat `embed`/`oembed` as the safe surface.
