<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Node Boolean (node_boolean) — agent index

Provides one core **Condition plugin** (id `node_boolean`) that evaluates a node's boolean
(checkbox) field values, for use as **block visibility** — or any context that consumes condition
plugins. In a block's *Visibility* UI, the "Node boolean" tab lists every boolean field that exists
on any node bundle; pick one or more, and the block shows depending on whether those fields are
checked on the node being viewed. Version **2.0.0**.

Mechanism: the plugin declares a required `node` context, reads the site's boolean-field map through
core `entity_field.manager` (`getFieldMapByFieldType('boolean')['node']`), and in `evaluate()`
returns TRUE/FALSE by checking the selected fields against the context node's bundle. "Any" (the
default) is TRUE when at least one selected field is present-and-checked; "all" is TRUE only when
every selected field exists on the bundle and is checked. With no field selected the condition
returns TRUE (a no-op). The standard core "Negate the condition" checkbox inverts the result. This
is a site-building convenience and a **display condition, not access control** — a block hidden by
it is simply not rendered, not access-protected; do not use it as a security boundary.

- Depends on: nothing declared in `info.yml` (no `dependencies:` key); the README notes it relies on
  core **Node**, and the field map only ever covers `node` entities.
- Core: `^8 || ^9 || ^10 || ^11`. Package: **Fields**. Composer: `drupal/node_boolean`, empty
  `require`.
- No settings page (`configure` = null), no routes, no services of its own, no permissions, no
  config-schema file, no `.module`/`.install`, no hooks, no drush. Defines **no new plugin type** —
  it implements core's `@Condition` plugin type.

## Key facts (real machine names)

- Condition plugin: `node_boolean` (label "Node boolean"),
  `src/Plugin/Condition/NodeBoolean.php` — extends `Drupal\Core\Condition\ConditionPluginBase`,
  implements `ContainerFactoryPluginInterface`.
- Context: `node` → `@ContextDefinition("entity:node", required = TRUE)`.
- Config keys (stored inside the host block/condition config): `boolean` = array of selected boolean
  field machine names (e.g. `field_featured`); `all` = bool (evaluate **all** vs **any**). Defaults
  `boolean: []`, `all: FALSE`. When `boolean` ends up empty the whole condition config is cleared to
  `[]` on submit.
- Injected dependency: core service `entity_field.manager` (no custom service defined).
- Config form (`buildConfigurationForm`): a `#type => checkboxes` "boolean" element whose options are
  every node boolean field, plus an "all" `#type => checkbox`. Reachable only inside admin-gated
  block / visibility UIs.
- Evaluation helpers: `evaluateAny()` / `evaluateAll()`, reading
  `$node->get($field)->first()->get('value')` and guarding on
  `$fields[$field]['bundles'][$node->getType()]`.
- Tests: `tests/src/Unit/Plugin/Condition/NodeBooleanConditionTest.php` (PHPUnit unit coverage of the
  any/all logic).
- No security surface (display-only condition; its form lives behind block-administration access).
