<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Bundle Class Annotations (bca) — agent index

Declare Drupal **bundle classes** with a PHP attribute (or annotation) on the class instead of
via `hook_entity_bundle_info_alter()`. **No module dependencies.** PHP >= 8.1.
Core requirement `^10.2 || ^11`.

Key facts:
- Surface: `src/Attribute/`, `src/Annotation/`, `src/BundlePluginManager.php`, `bca.module`,
  `bca.services.yml`. No routes, permissions or configuration.
- **Ergonomics, not capability.** Registered bundle classes behave exactly as they would via the
  hook; what changes is that the declaration lives with the class, so adding or deleting a
  bundle class is one file rather than two places. The payoff scales with bundle count.
- Attributes require PHP 8.1 — hence the `php: >=8.1` constraint. The annotation path exists for
  compatibility but attributes are the intended form on a modern codebase.
- Linted upstream: `phpstan.neon` + `phpstan-baseline.neon`, `phpcs.xml`.
- Migrating an existing codebase: the hook and this module can coexist, so bundle classes can be
  converted incrementally.
