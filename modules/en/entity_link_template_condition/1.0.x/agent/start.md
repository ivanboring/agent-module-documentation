<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Entity Link Template Condition (entity_link_template_condition) — agent index

**Condition plugin `entity_link_template` that is TRUE when the current request is an entity link-template route (canonical, edit-form, delete-form, …).**

- **Version:** 1.0.x
- **Core:** ^10.3 || ^11 · **PHP:** 8.1
- **Depends on:** `entity_route_context`
- **Plugin:** `Drupal\entity_link_template_condition\Plugin\Condition\EntityLinkTemplateCondition` (id `entity_link_template`)
- **Config keys:** `link_templates_any` (match key for any entity type), `link_templates` (exact `entity_type:key`)
- **Evaluate:** uses `entity_route_context.route_helper::getLinkTemplateByRouteMatch()`; FALSE when nothing configured

**Security:** No routes, permissions, services, or forms of its own — pure visibility logic configured inside the host UI (e.g. block Visibility). No access impact beyond where an admin places it.
