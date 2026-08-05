<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# User display name (user_display_name) — agent index

Adds a **display name** field to user accounts and makes Drupal use it. Depends on core `user`.
Core requirement `^10.1 || ^11 || ^12` (declares Drupal 12). No routes, permissions or config.

Key facts:
- Works through Drupal's own display-name resolution (`hook_user_format_name_alter`, in
  `src/Hook/`), so anything rendering an account picks it up automatically. That is why the module
  is so small.
- Surface: `src/Hook/`, `user_display_name.module`, `.install`, `.post_update.php`,
  `.services.yml`.
- **If the goal is privacy, check where the raw username still leaks:**
  - `/admin/people` listing,
  - **JSON:API and REST** user resources,
  - any View that adds the `name` field directly rather than rendering the account entity,
  - login and password-reset flows.
  The display-name hook covers rendered accounts, not every path that reads `name`.
- Modern, minimal alternative to Real Name and similar long-standing modules; nothing is migrated
  from those automatically.
