<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Bundle form (bundle_form) — agent index

**Per-bundle entity form override via plugins.** Replaces a content entity's add/edit form for a specific bundle without changing the entity's global form handler.

**Version:** 1.0.x (1.0.2). Core: `^11 | ^12`. Submodule: `bundle_form_examples`.

Mechanism: plugin type `bundle_form` (`plugin.manager.bundle_form`, base `BundleFormPluginBase`, annotation `@BundleForm` with entity type + bundle). Hook classes `Hook\FormHooks` and `Hook\EntityHooks` dispatch a bundle's form to the matching plugin; base forms `Form\NodeForm` / `Form\TermForm` + `BundleFormTrait`. No routes, no permissions, no config schema of its own. Write plugins at `src/Plugin/BundleForm/{EntityType}/{Bundle}Form.php`.

**Security:** no routes or endpoints; purely code-defined form customization. Nothing anonymous or mutating exposed by the module itself. No security findings.