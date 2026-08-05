<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Domain Menu Access applies Domain Access rules to individual **menu links**: each link gets domain assignments, and a menu tree manipulator hides links that do not belong to the domain being served.

---

Domain Access controls which domains a node belongs to, but menus stay global — every domain shows every link. This module closes that gap by reusing the same field. `hook_menu_link_content_presave()` calls `domain_access_presave_generate()` so a menu link gets the standard `field_domain_access` / "all affiliates" values just like a node, and a form alter groups those fields into a *Domain* details element on the menu link form. Which menus participate is configuration: `domain_menu_access.settings:menu_enabled` lists them, edited at `/admin/config/domain/domain_menu_access/config` (permission `administer domains`), and for menus **not** in that list the domain fields are hidden from the form entirely. Enforcement is a menu tree manipulator, `DomainMenuLinkTreeManipulators::checkDomain()`, which walks the tree and — respecting any access decision another manipulator already made — replaces a forbidden link with an `InaccessibleMenuLink`, empties its subtree, and adds the **`url.site`** cache context so menus cache correctly per domain. The menu overview table also gains a *Domains* column showing each link's assignments. A permission, `administer menu items across domains`, lets trusted users edit links belonging to any domain rather than only the current one, and a submodule adds support for the Menu Block module.

---

- Show different menu links on each domain of a multi-domain site.
- Give a country site its own navigation without duplicating menus.
- Hide an affiliate-specific link from the main site.
- Assign a menu link to several domains at once.
- Use the "all affiliates" flag for links that appear everywhere.
- Restrict which menus participate in domain filtering.
- Let editors see which domains each link targets in the menu overview.
- Allow trusted staff to edit links across all domains.
- Keep menu caching correct per domain via the url.site context.
- Reuse Domain Access field configuration for menus.
- Hide a subtree when its parent link is not available on a domain.
- Present brand-specific navigation from one Drupal install.
- Combine with Menu Block for domain-filtered menu blocks.
- Avoid building separate menus per domain.
- Keep menu structure shared while varying visibility.
- Apply domain rules to a footer menu only.
- Give a staging domain a reduced navigation.
- Prevent cross-domain link leakage in shared menus.
- Manage menu domain assignment from the standard link form.
- Migrate an existing menu to domain-aware visibility.
