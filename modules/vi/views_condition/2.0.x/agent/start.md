<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Views Condition (views_condition) — agent index

A single **condition plugin** matching the view + display currently being rendered. No config of
its own, no permissions, no schema, no Drush. Depends on core `views`.

Key facts:
- Plugin `@Condition(id = "views_condition")` —
  `ViewsCondition extends ConditionPluginBase implements ConditionInterface,
  ContainerFactoryPluginInterface`, injecting the **view storage** (`EntityStorageInterface`) and
  **`CurrentRouteMatch`**.
- `buildConfigurationForm()`:
  - a `radios` element titled *Views Condition* selecting the overall mode;
  - then, per view, a `details` element labelled with the view's label containing a **checkbox per
    display** (`$display['display_title']`), so selection is view-display granular.
  - `validateConfigurationForm()` normalises the submitted selection.
- Evaluation uses the current route match to identify the rendered view/display, so it is
  path-independent — aliases and language prefixes do not matter.
- `views_condition.libraries.yml` + `js/views_condition.js` improve the form UX (collapsing the
  per-view details groups).
- Being a plain condition plugin, it shows up in **block visibility**, Layout Builder section
  visibility, the Context module, and anywhere `condition` plugins are evaluated.

Using it in block config:

```yaml
# block.block.mysidebar
visibility:
  views_condition:
    id: views_condition
    negate: false
    # selection shape follows the plugin's configuration form
```

```bash
drush cget block.block.mysidebar visibility
```

Notes:
- The condition only matches when a **view** is being rendered on the route; on non-view pages it
  does not apply (combine with `negate` for "everywhere except views").
- Views embedded via blocks or fields are identified by the route, so an embedded display inside a
  node page evaluates against the node route, not the view.
