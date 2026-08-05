<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Create Menus Permission splits menu creation out of `administer menu`, so a role can add menus without gaining control of the site's entire menu structure.

---

`administer menu` is one of Drupal's coarser permissions. It covers creating and deleting menus, editing every link in every menu including the administration menu, and — because menu links can point anywhere — arranging the site's navigation in whatever way the holder chooses. It is genuinely an administrative permission, which makes it awkward for the common delegated case: a department that needs its own menu for its own section, an editor building navigation for a microsite, a team whose menu is theirs and whose site's main menu is not. The choice today is all of it or none of it, and "all of it" is usually granted because the alternative is a ticket every time. This module adds a narrower permission through a **`permission_callbacks`** entry, generating what is needed rather than declaring a fixed list — which is the right mechanism when the permission set depends on what exists. Version **1.1.0** on core `^10 || ^11`, depending on core `menu_ui`. Two things to establish, because a partial permission that leaks is worse than none. **What creating a menu implies**: whoever creates a menu usually administers it, so confirm whether the new permission also confers editing rights over the created menu and whether it stops there. And **menu links are navigation, and navigation is trust** — a link is a piece of the site's chrome pointing wherever its author chose, so a delegated menu that can be placed in a shared region is a delegated ability to put arbitrary links in front of every visitor.

---

- Let a department create its own menu.
- Delegate menu creation without full control.
- Apply least privilege to menu management.
- Let an editor build a microsite's navigation.
- Avoid granting administer menu.
- Reduce the number of full administrators.
- Support a devolved site structure.
- Let a team manage its own navigation.
- Separate creating from administering menus.
- Reduce ticket volume for menu requests.
- Support a multi-team intranet.
- Delegate navigation to a section owner.
- Restrict who may edit the main menu.
- Support a campaign team's structure.
- Grant menu creation to a role.
- Reduce privilege creep.
- Support a permissions audit.
- Enable self-service navigation building.
