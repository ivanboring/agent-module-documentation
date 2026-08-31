<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Admin Toolbar Messages (admin_toolbar_messages) — agent index

Splits Drupal's **status/warning/error messages** out of the page's message region and displays
them in the **Toolbar** (classic) or the **Navigation top bar** (Drupal 11) — but only messages
that were raised **while on an admin route**, and only rendered once the user is on a **non-admin
(front-end)** page. Version **1.0.4**, core `^10.3 || ^11`, PHP `>=8.1`. No config, no permissions,
no routes, no Drush commands, no config schema. Pure service decoration.

## Mechanism (read the source, not the name)

- **`src/AdminAwareMessenger.php`** — decorates the core `messenger` service
  (`services.yml`: `decorates: 'messenger'`). `addMessage()` checks `router.admin_context`:
  on an admin route the message is stored under an `admin:`-prefixed type; otherwise it passes
  through to the inner messenger unchanged. `all()`/`deleteAll()` merge the `admin:` messages back
  in **only** while on an admin route, so they still show inline on the admin page itself. Helper
  `addAdminMessage()` forces the prefix regardless of route.
- **`src/AdminToolbarMessagesBuilder.php`** — `#[TrustedCallback] build()`. Returns `[]` on admin
  routes. Off admin routes it calls `deleteAllAdmin()` (pulls + deletes the prefixed messages) and
  renders them via `#theme => 'status_messages__admin_toolbar_messages'`.
- **`src/Hook/ToolbarHooks.php`** — `hook_toolbar()`. Adds a right-aligned `admin_toolbar_messages`
  tab (weight 1100) whose content is the builder as a `#lazy_builder` placeholder. Returns `[]` on
  admin routes.
- **`src/Plugin/TopBarItem/AdminMessagesTopBarItem.php`** — Drupal 11 Navigation `TopBarItem`
  plugin (`region: Actions`, label "Administrative Status Messages"); same lazy-builder content.
- **`src/Hook/ThemeHooks.php`** — registers the theme hook (base hook `status_messages`) and, via
  `library_info_alter`, swaps `navigation.css` → `navigation.gin.css` when both `navigation` and
  `gin_toolbar` are enabled.
- **`templates/status-messages--admin-toolbar-messages.html.twig`** — collapsible drawer, a
  pure-CSS checkbox toggle, messages grouped by type; renders `{{ message }}` with Twig
  auto-escaping (same trust model as core status-messages).

## Dependencies / relationships

- **No hard dependency** in `.info.yml` — `toolbar` and `navigation` are **test** dependencies
  only; `composer.json` requires just `drupal/core`. There is **no** dependency on `admin_toolbar`.
- Produces nothing to display unless the classic **Toolbar** or the core **Navigation** module is
  present. Works well alongside `admin_toolbar` and `gin_toolbar`.

## Notes for agents

- The whole point is the admin-route → non-admin-route split; "moves all status messages to the
  toolbar" is an oversimplification.
- No settings form and no `configure` route — nothing to point a user at in the admin UI.
- Accessibility caveat: relocating messages into a collapsible drawer can weaken the `aria-live`
  announcement and hide errors that should sit next to the field that caused them.
