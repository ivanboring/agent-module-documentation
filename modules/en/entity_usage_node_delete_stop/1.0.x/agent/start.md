<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Entity Usage Delete Stop (entity_usage_node_delete_stop) — agent index

Blocks the node **delete confirm form** for nodes that Entity Usage reports as used, per content
type. Three form hooks, one permission, a config schema for the third-party setting. Requires
contrib `entity_usage`.

Key facts:
- Per-bundle switch stored as a **third-party setting** on the node type:
  `entity_usage_node_delete_stop.prohibit_deletion` (0/1), set by the
  *Entity Usage Node Delete Settings* details group on the node type form
  (`hook_form_node_type_form_alter()` + an `#entity_builders` callback).
- **Two preconditions** for anything to happen — both easy to miss:
  1. `entity_usage.settings:delete_warning_message_entity_types` must include **`node`**;
  2. Entity Usage must have rendered `$form['entity_usage_delete_warning']` on the delete form.
  Otherwise the settings checkbox is not even shown, and the stop does not apply.
- On `node_confirm_form` (`hook_form_node_confirm_form_alter()`), when the setting is on and the
  user lacks **`skip node delete stop`**:

  ```php
  $form['entity_usage_delete_warning']['#message_list']['error'][] =
    t('Deletion is disabled until all usages are removed.');
  $form['actions']['submit']['#disabled'] = TRUE;
  ```

- **Scope limit — important.** This is a *form-level* guard only. There is no
  `hook_entity_access`, no `hook_entity_predelete` and no delete-access alter, so nodes can still
  be deleted by: `drush entity:delete`, Views Bulk Operations, migrations, REST/JSON:API,
  `$node->delete()` in custom code, or any other non-confirm-form path. Treat it as an editorial
  safety net, not referential-integrity enforcement.

```bash
# Precondition:
drush cget entity_usage.settings delete_warning_message_entity_types
# Turn the stop on for a bundle:
drush php:eval '
$t = \Drupal\node\Entity\NodeType::load("page");
$t->setThirdPartySetting("entity_usage_node_delete_stop", "prohibit_deletion", 1);
$t->save();'
# Escape hatch:
drush role:perm:add administrator 'skip node delete stop'
```
