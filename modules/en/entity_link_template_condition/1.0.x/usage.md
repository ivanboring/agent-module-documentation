<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Entity Link Template Condition provides a Condition plugin (`entity_link_template`) that evaluates TRUE when the current route corresponds to an entity link template such as `canonical`, `edit-form`, or `delete-form`.

It builds on the Entity Route Context module's route helper to map the current route match back to an `[entity_type_id, link_template_key]` pair. The plugin offers two configuration sets: "any entity type" (match a link-template key like `canonical` regardless of entity type) and "exact entity type" (match `node:canonical`, `taxonomy_term:edit-form`, etc.). If neither is configured the condition returns FALSE. Because it is a standard Condition plugin it plugs into block visibility, and any other consumer of the condition system.

There is no route, permission, service, or admin form of its own — configuration lives inside whichever host UI embeds the condition (e.g. a block's Visibility tab). Requires `entity_route_context`.
---
A Condition plugin that matches entity link-template routes (canonical, edit-form, …) for any or an exact entity type.
---
- Show a block only on node canonical (view) pages
- Show a block only on entity edit-form routes
- Show a block only on delete-form routes
- Match a link-template key across all entity types at once
- Match an exact entity-type + link-template pair (e.g. `node:canonical`)
- Hide a block on every entity view page by negating the condition
- Restrict a block to taxonomy term pages
- Restrict a block to user profile (canonical) pages
- Restrict a block to media edit forms
- Combine with other visibility conditions on a block
- Drive layout/section visibility from the current entity route
- Target add-form vs edit-form routes distinctly
- Reuse the condition in custom code via the condition manager
- Match commerce or custom entity link templates
- Apply the condition to any Condition-aware plugin consumer
- Configure per-context defaults (link_templates_any / link_templates)
