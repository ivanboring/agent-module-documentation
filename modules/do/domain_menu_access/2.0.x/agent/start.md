<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Domain Menu Access (domain_menu_access) — agent index

Applies Domain Access rules to individual menu links. Requires `domain`, `domain_access` and
core `menu_link_content`. Config UI `/admin/config/domain/domain_menu_access/config`
(`configure: domain_menu_access.settings`, permission **`administer domains`**).

Submodule (own docs):
- `domain_menu_access_menu_block` →
  [../../modules/domain_menu_access_menu_block/2.0.x/agent/start.md](../../modules/domain_menu_access_menu_block/2.0.x/agent/start.md)

Key facts:
- Menu links reuse Domain Access's own fields:
  `hook_menu_link_content_presave()` → `domain_access_presave_generate($entity)`, so
  `DomainAccessManagerInterface::DOMAIN_ACCESS_FIELD` (`field_domain_access`) and the
  "all affiliates" field behave exactly as on nodes.
- `hook_form_menu_link_content_form_alter()`:
  - if the link's menu **is** in `domain_menu_access.settings:menu_enabled`, the two domain
    fields are grouped into a *Domain* `details` element (weight 25) and
    `domain.element_manager->setFormOptions()` adds the hidden options;
  - otherwise both fields get `'#access' => FALSE` — so a link in a non-participating menu
    silently keeps whatever domain values it already had.
- **Enforcement**: service `domain_menu_access.default_tree_manipulators` →
  `Menu\DomainMenuLinkTreeManipulators::checkDomain($tree)`:
  - skips elements another manipulator already forbade
    (`!isset($element->access) || $tree[$key]->access->isAllowed()`);
  - on forbidden: sets the access result, wraps the link in **`InaccessibleMenuLink`** and
    clears `subtree` — so children of a hidden link disappear too;
  - adds the **`url.site`** cache context to every element's access result, which is what makes
    per-domain menu caching correct.
- `hook_preprocess_table__menu_overview()` inserts a **Domains** column (position 1) into the
  menu overview, resolving each row's `menu_link_content` entity by UUID from the row's
  `data-drupal-selector`.
- Permission `administer menu items across domains` — "allow the user to alter all menu items
  instead of only the Menu items of the Current Domain".

```bash
drush cget domain_menu_access.settings menu_enabled
drush role:perm:add site_admin 'administer menu items across domains'
```
