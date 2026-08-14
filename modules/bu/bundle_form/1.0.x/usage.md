<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Bundle form lets you replace the default content-entity add/edit form with a bundle-specific one, without swapping the entity's form handler globally.

It registers a `bundle_form` plugin type (managed by `plugin.manager.bundle_form`) and, through hook implementations (`Drupal\bundle_form\Hook\FormHooks` / `EntityHooks`), routes a given entity bundle's form to the matching plugin. Plugins are annotated with the target entity type and bundle (e.g. Node/Article, Node/Page, Term/Tags, Paragraph/Type1) and extend a base form so you can add fields, alter validation, or restructure the form for just that bundle. The bundled `bundle_form_examples` submodule ships ready-made example plugins for node, term and paragraph bundles that you can copy.

This is a developer/site-builder tool: there are no routes, permissions or admin UI of its own — behaviour is defined entirely in code by the plugins you write. Enable the examples submodule to see the pattern, then create plugins under `src/Plugin/BundleForm/{EntityType}/{Bundle}Form.php` in your own module.
---
Write a per-bundle form plugin to customize one bundle's add/edit form; the module wires it up automatically.
---
- Give the Article node type a different edit form from Page
- Add custom fields or markup to a single bundle's form only
- Apply bundle-specific validation without a global form_alter
- Restructure the field order for one content type
- Override a taxonomy term bundle's form (e.g. Tags)
- Override a Paragraph type's form
- Provide a distinct 'first article' onboarding form variant
- Keep bundle form logic in its own class instead of hook_form_alter
- Copy an example plugin from bundle_form_examples as a starting point
- Extend the plugin base form to reuse shared behaviour
- Target a form by entity type + bundle via the plugin annotation
- Inject services into a bundle form plugin via the plugin manager
- Add a submit handler scoped to a single bundle
- Conditionally hide fields for a specific bundle
- Ship bundle form plugins inside a feature/module
- Avoid a monolithic hook_form_alter switch on bundle