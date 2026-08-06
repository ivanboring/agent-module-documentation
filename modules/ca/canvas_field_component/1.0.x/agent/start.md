<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Drupal Canvas Field Component (canvas_field_component) — agent index

Exposes **rendered field output as a Canvas component source**, so a Canvas template can place the
entity's own fields. Manage at `entity.component.collection`. Version **1.0.2**.
Core `^11.2 || ^12`, **PHP 8.3**. Depends on `canvas:canvas`.

Classes: `Plugin/Canvas/ComponentSource/FieldDisplayComponent`, `Hook/ConfigSchemaHooks`.

Why it matters: field output goes through the formatter pipeline — image styles, date/text
formats, entity reference rendering, field-level access. A component that reimplemented field
output would lose all of that.

**Documented from source. `canvas` could not be kept enabled on the review install — verified.**
`SingleDirectoryComponentDiscovery` → `ComponentMetadataRequirementsChecker::check()` →
`JsonSchemaPropsComponentSourceBase::fieldTypePropExpressionExampleRequiresEntity()` →
`assert($property !== NULL)`. Where a third-party SDC component's prop example maps to a
field-type property expression that does not resolve, the assertion fails; with
`zend.assertions` on (DDEV and most dev images) that is an uncaught `AssertionError` **during
container build**, so the site and Drush both stop. The cache rebuild succeeded immediately on
uninstalling `canvas`, with SDC components from two unrelated modules still present. Production
PHP compiles assertions out, so this is a **development-environment** failure — but a total one.
Warn anyone installing Canvas locally.