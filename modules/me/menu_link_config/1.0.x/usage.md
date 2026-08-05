<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Menu Link Config makes menu links **configuration entities**, so a navigation structure can be deployed with `drush cim` instead of being recreated by hand on every environment.

---

Drupal's menu links come in two kinds and neither is deployable in the way site builders expect. Links defined by modules in `*.links.menu.yml` are code, fixed at release time. Links created through the UI are `menu_link_content` — content entities, which do not appear in a configuration export and therefore have to be recreated, exported as default content, or migrated. Since a site's primary navigation is structural rather than editorial on many projects, that is a recurring annoyance and a recurring source of environment drift. This module adds the third option: a `menu_link_config` configuration entity with `MenuLinkConfigMapper`, an entity form and a controller, and an add route at `/admin/structure/menu/manage/{menu}/add_config_link` gated by `_entity_create_access: 'menu_link_config'` — the correct scoped check rather than a flat permission. The links appear in the normal menu UI alongside the other kinds. Two caveats: the release is **8.x-1.0-alpha9**, a long-standing alpha, and links as configuration cannot be translated through content translation the way `menu_link_content` can — so a multilingual site should check that before adopting it.

---

- Deploy a menu structure with configuration.
- Keep navigation identical across environments.
- Review a menu change in a merge request.
- Stop recreating menu links after a database refresh.
- Version-control the primary navigation.
- Ship a menu with an install profile.
- Roll back a navigation change with config revert.
- Give developers ownership of structural links.
- Avoid default-content modules for menus.
- Add a config link from the menu UI.
- Keep a footer menu in code.
- Reduce environment drift in navigation.
- Standardise menus across a multisite.
- Deploy a new section's menu link with its code.
- Audit navigation changes in git history.
- Combine config links with content links.
- Prepare menus before content exists.
- Keep menu structure out of content exports.
