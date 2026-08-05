<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Module Builder (module_builder) — agent index

UI for **`drupal-code-builder/drupal-code-builder ^4.6`**, generating custom-module scaffolding.
Core requirement `^8 || ^9 || ^10 || ^11`. Submodule: `module_builder_devel`.

Key facts:
- **Single permission `create modules`, `restrict access: true`** — gates *every* route
  including the settings form. Correct: this writes PHP into the codebase.
  (The permission's YAML has a typo, `decription:` instead of `description:`, so the permissions
  page shows no description. Cosmetic.)
- Routes:

  | Route | Path |
  |---|---|
  | `module_builder.settings` | `/admin/config/development/module_builder/settings` |
  | `module_builder.analyse` | `/admin/config/development/module_builder/analyse` |
  | `module_builder.autocomplete` | `/module_builder/autocomplete/{property_address}` |

- **Run "Analyse site code" first.** The generator builds its knowledge of hooks, plugin types and
  services from *this site's* code, so output matches the installed core version and enabled
  modules rather than a generic template. Re-run it after upgrading core or adding modules.
- The heavy lifting is in the external library, which Drush's own generate commands also use —
  so output is consistent with `drush generate`.
- Developer tool: keep it out of production, or at least keep `create modules` ungranted there.
