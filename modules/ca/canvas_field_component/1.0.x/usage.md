<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Drupal Canvas Field Component makes a rendered field available as a Canvas component, so a template can place "this entity's body, in this view mode" alongside the components Canvas already offers.

---

Canvas builds pages from components. Fields are not components, which produces an awkward gap: a page assembled in Canvas can contain designed blocks and arbitrary markup but not, without help, the actual field values of the entity it is displaying. This module closes that — `Plugin/Canvas/ComponentSource/FieldDisplayComponent` exposes field displays as a component source, with `Hook/ConfigSchemaHooks` supplying the schema — so an editor can drop the entity's own image, title or body into the layout and have it render through the normal formatter pipeline.

That matters because the formatter pipeline is where a lot of a site's correctness lives: image styles, date formats, text formats, entity reference rendering and field-level access all apply. A component that reimplemented field output would lose all of it.

Managed at `entity.component.collection`. Requires PHP 8.3 and Drupal `^11.2 || ^12`, so like Canvas itself it targets the current edge rather than a broad range.

**Note on documenting this one:** it is written from source. Canvas could not be kept enabled on the review install — its `SingleDirectoryComponentDiscovery` runs `ComponentMetadataRequirementsChecker` over **every** SDC component on the site, and where a component's prop example maps to a field-type property expression that does not resolve, `assert($property !== NULL)` fails. With `zend.assertions` enabled (the default in DDEV and most development images) that is an uncaught `AssertionError` during container build: the site and Drush both stop working. Verified — the cache rebuild succeeded immediately once `canvas` was uninstalled, with third-party SDC components from two unrelated modules present. Production PHP compiles assertions out, so this is a development-environment failure, but it is a total one.

---

- Place an entity's field output inside a Canvas template.
- Put the body field into a Canvas-built page.
- Render an image field through its image style in Canvas.
- Keep field formatters in play inside a page builder.
- Preserve field-level access in a composed layout.
- Combine designed components with real field values.
- Use a specific view mode for a field in a template.
- Avoid reimplementing field rendering as a component.
- Manage field components from the component collection.
- Build an entity template that mixes fields and components.
- Keep date and text format handling consistent.
- Render an entity reference field inside Canvas.
- Plan a Drupal 11.2+ page-building stack.
- Check `zend.assertions` before installing Canvas locally.
- Audit which Canvas templates place field components.
- Diagnose a container build that fails on component discovery.
