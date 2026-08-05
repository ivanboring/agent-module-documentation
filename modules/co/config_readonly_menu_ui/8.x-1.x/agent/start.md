<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Configuration Read-only Menu UI (config_readonly_menu_ui) — agent index

Carves an exception into **`config_readonly`** so **content menu links** can be reordered on a
locked-down site. Requires `config_readonly`, `menu_ui`, `menu_link_content`. Version **8.x-1.3**.
Core requirement `^8 || ^9 || ^10 || ^11`.

**The friction it resolves is structural, not a bug.** Menus mix two storage kinds: the **menu** is
configuration, its **content menu links** are content entities — and the menu administration form
saves **both**. So `config_readonly` blocks a purely editorial reordering because the form touches
configuration. Editors experience this as *"I can't move a menu item on the live site"*, which is a
legitimate complaint.

**Two things to note:**
1. **Every exception to a lock is a hole in the lock.** The value of the whole arrangement depends
   on this one being narrow — **confirm what it actually permits**, since "reorder links" and "edit
   the menu form" are different sizes of exception.
2. **Menu weights are content here, so they do not travel with a configuration export.** A reorder
   made on production **stays on production** — the intended consequence, and one that whoever
   expects environments to match needs to understand.
