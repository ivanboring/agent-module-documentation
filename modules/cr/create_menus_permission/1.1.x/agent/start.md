<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Create Menus Permission (create_menus_permission) — agent index

Splits **menu creation** out of `administer menu`. Permissions are generated through a
**`permission_callbacks`** entry (`CreateMenusPermission::CreateMenusPermission`) — the right
mechanism when the set depends on what exists. Depends on core `menu_ui`. Version **1.1.0**.
Core requirement `^10 || ^11`.

**Why `administer menu` is too coarse:** it covers creating and deleting menus, editing **every
link in every menu including the administration menu**, and — because links point anywhere —
arranging the site's navigation however the holder likes. So the delegated case (a department
needing its own menu for its own section) has only "all of it" or "none of it", and "all of it"
gets granted because the alternative is a ticket every time.

**Two things to establish — a partial permission that leaks is worse than none:**
1. **What creating a menu implies.** Whoever creates a menu usually administers it — confirm
   whether the new permission also confers editing rights over the created menu, and where it stops.
2. **Menu links are navigation, and navigation is trust.** A link is site chrome pointing wherever
   its author chose. A delegated menu placeable in a shared region is a delegated ability to put
   arbitrary links in front of every visitor.
