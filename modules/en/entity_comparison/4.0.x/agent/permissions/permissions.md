<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Permissions

## Static

| Permission | Gates |
|---|---|
| `administer entity comparison` | The `/admin/structure/entity_comparison` UI (add/edit/delete comparison config entities) |

## Generated, one per comparison

`EntityComparisonPermissions::entityComparisonTypePermissions()` (registered via
`permission_callbacks` in `entity_comparison.permissions.yml`) creates:

```
use {comparison_id} entity comparison     — "%label: Use entity comparison"
```

That permission gates three things:

1. The comparison page route `/compare/{id-with-dashes}` (`_permission` on the dynamic route).
2. `#access` on every rendered add/remove link (entity display, block, Views field).
3. `hook_entity_field_access()` for the `entity_comparison_link` field.

```bash
drush role:perm:add anonymous 'use products entity comparison'
drush role:perm:list anonymous | grep 'entity comparison'
```

After creating a new comparison, rebuild caches so its permission and route appear:

```bash
drush cr
```

## What is *not* gated

The toggle route is the gap worth understanding before granting the comparison permission widely:

```yaml
entity_comparison.action:
  path: '/entity-comparison/{entity_comparison_id}/{entity_id}'
  requirements:
    _permission: 'access content'      # <- not "use {id} entity comparison"
```

- Any user with `access content` can toggle **any** comparison list, including one whose
  `use …` permission they do not hold.
- `{entity_id}` is loaded with no `$entity->access('view')` check and **no verification that the
  entity actually belongs to the comparison's configured bundle** — the id is simply filed under
  the comparison's `[entity_type][bundle]` key in the session.
- There is no CSRF token on this state-changing GET route.

The practical consequence is that a user who *does* hold `use {id} entity comparison` can seed the
list with arbitrary entity ids of that entity type and have their fields rendered on the compare
page, bypassing entity-level access. Full write-up in `security.md` at this module's root.

Mitigations if you must expose this publicly:

- Keep the comparison's view mode limited to fields that are safe for any visitor of that bundle.
- Restrict `use {id} entity comparison` to authenticated roles.
- Consider a `hook_entity_comparison_rows_alter()` implementation (or a route-alter adding an
  access check) that filters `$comparison_context['entities']` through `$entity->access('view')`
  before the table is built.
