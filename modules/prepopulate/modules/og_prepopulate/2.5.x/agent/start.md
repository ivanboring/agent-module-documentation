<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Organic Groups Prepopulate — agent index

Submodule of [prepopulate](../../../../2.5.x/agent/start.md). Requires `prepopulate`
**and** `og` (`drupal/og`) — it cannot be enabled without Organic Groups. No settings form, no
route, no permission, no config, no plugins. Three files: `og_prepopulate.module`,
`og_prepopulate.services.yml`, `src/Populate.php`.

- **URL syntax, the widget alter, the service and the membership rule** →
  [api/og-populate.md](api/og-populate.md)

Key facts:

- URL syntax is the **short** form: `?<field_name>=<entity_id>`, e.g.
  `/node/add/article?og_audience=12` — *not* the parent's `edit[...][widget][0][target_id]`.
- Only the OG `og_complex` widget is altered
  (`og_prepopulate_field_widget_og_complex_form_alter()`).
- Service `og_prepopulate.populator` = `Drupal\og_prepopulate\Populate` extends
  `Drupal\prepopulate\Populate` with `@current_user` added.
- Membership rule: `Og::isMember($entity, $current_user)` replaces the parent's
  `view label` access check; on a match the widget is filled **and hidden** (`#access = FALSE`).
- If the field already has a value and no query parameter is present, the widget is hidden too.
