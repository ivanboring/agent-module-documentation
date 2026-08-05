<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Migrate Scanner (migrate_scanner) — agent index

Replaces core's flat migration-plugin discovery with a **recursive** one, so migration YAML can
live in subdirectories of `migrations/`. Depends on core `migrate`.
Core requirement `^10 || ^11 || ^12`.

Key facts:
- Core reads `migrations/*.yml` and does not descend. With this module,
  `migrations/nodes/article.yml`, `migrations/media/image.yml` etc. are all found.
- **Discovery only — no behaviour change.** The same migrations run identically; only where the
  files may live changes. If a migration misbehaves, this module is almost never the cause.
- No routes, no permissions, no config, no schema. Surface is
  `src/Component/` (the recursive scanner), `src/Plugin/` (the discovery decorator),
  `migrate_scanner.services.yml`, and `migrate_scanner.api.php` for the hook contract.
- No `composer.json` in the release tarball — install via `composer require drupal/migrate_scanner`
  against packages.drupal.org as usual.
- Development-time convenience: nothing about it is visible to editors.

```bash
drush pm:list --status=enabled | grep migrate
drush migrate:status        # unchanged output; only discovery paths widened
```
