<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Module Builder generates the boilerplate of a custom module — info file, hooks, plugins, forms, services, permissions — from a form, so a developer starts with correct scaffolding rather than copying an old module and editing it.

---

The generation itself lives in `drupal-code-builder/drupal-code-builder ^4.6`, a standalone library also used by Drush's generate commands; this module is its Drupal UI. It works by analysing the site's own code — hence the "Analyse site code" form at `/admin/config/development/module_builder/analyse`, which builds the data about hooks, plugin types and services *actually present on this site*, so the generated scaffolding matches the installed version and modules rather than a generic template. An autocomplete route backs the component form, and the several stylesheets (`component_form.*`, `hooks.css`, `generated_files.css`) reflect a form with real complexity — components, variants, delta details. Its single permission, **`create modules`**, is marked `restrict access: true`, which is right for something that writes code, and gates every route including the settings form. A `module_builder_devel` submodule adds development helpers. Core range is a wide `^8 || ^9 || ^10 || ^11`. Note the permission's `.yml` has a typo — `decription` rather than `description` — so the permissions page shows no description text; harmless, and a useful signal that the file is hand-maintained.

---

- Scaffold a new custom module quickly.
- Generate correct hook implementations.
- Create a plugin class with the right annotation.
- Build a settings form with boilerplate in place.
- Generate a service definition and class.
- Produce a permissions file.
- Learn a hook's current signature.
- Analyse the site's own hooks and plugin types.
- Generate code matching the installed core version.
- Reduce copy-paste errors from an old module.
- Create an event subscriber skeleton.
- Scaffold a custom entity type.
- Teach a new developer Drupal's structure.
- Generate a Drush command class.
- Produce a module with tests scaffolded.
- Restrict code generation to trusted developers.
- Keep scaffolding consistent across a team.
- Generate a block plugin.
