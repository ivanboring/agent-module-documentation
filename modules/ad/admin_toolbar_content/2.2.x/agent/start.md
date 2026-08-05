<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Admin Toolbar Content (admin_toolbar_content) — agent index

Content-oriented additions to the Admin Toolbar menus. Depends on **both** `admin_toolbar` and
`admin_toolbar_tools`. Core requirement `^10.2 || ^11`.
Settings at `/admin/config/user-interface/admin-toolbar-content`
(`administer site configuration`).

Key facts:
- Requires `admin_toolbar_tools`, not just `admin_toolbar` — the expanded-menu submodule is what
  it builds on. A site running only the base module needs both.
- Defines a plugin type (`AdminToolbarContentPluginInterface`,
  `AdminToolbarContentPluginManagerInterface`), so other modules can contribute toolbar sections
  rather than this module enumerating them.
- No permissions of its own; visibility of each entry follows the underlying route's own access,
  so an editor sees only what they could already reach.
- Purely navigational — it changes how the toolbar is composed, never what a user may do.
- Linted upstream (`phpstan.neon`).
