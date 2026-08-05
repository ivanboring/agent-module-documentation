<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Redirect Extensions (redirect_extensions) — agent index

Bulk editing and export for the **Redirect** module. Depends on `redirect` and
`views_data_export`. Core requirement `^9.4 || ^10 || ^11`.

| Route | Path | Permission |
|---|---|---|
| `entity.redirect.edit_status_code` | `/admin/config/search/redirect/edit/status` | `administer redirects` |
| `entity.redirect.edit_dest` | `/admin/config/search/redirect/edit/dest` | `administer redirects` |

Key facts:
- Reuses Redirect's own **`administer redirects`** permission rather than declaring a new one —
  so anyone who can already manage redirects gains the bulk operations automatically when this is
  enabled. Worth noting in an access review: it widens the *blast radius* of an existing
  permission without widening who holds it.
- `src/RedirectDatabaseStorage.php` (+ interface) implements the bulk operations directly against
  storage.
- **`views_data_export` is a hard dependency**, which pulls in `rest`, `serialization` and
  `csv_serialization` transitively — a bigger footprint than the module's own size suggests.
- **Bulk changes are not undoable through the UI.** And status codes matter for SEO: 301 signals a
  permanent move and transfers ranking signals, 302 does not. Take a backup before a bulk status
  change.
