<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Domain Access Logo (domain_access_logo) — agent index

Per-domain site logo for Domain Access. Depends on core `file` and `domain`
(composer: `drupal/domain ^2.0 || ^3.0`). Core requirement `^10.2 || ^11`.
Configure at `/admin/config/domain/domain_access_logo`.

Key facts:
- One route, `domain_access_logo.settings`, gated by its own permission
  **`administer domains access logos`** (not `administer site configuration`) — so logo
  management can be delegated without handing over site config.
- Resolution happens in `src/DomainAccessLogo.php` (registered in
  `domain_access_logo.services.yml`), keyed on the active domain rather than the active theme.
  The logo therefore follows the domain across theme switches.
- Logos are **uploaded files**, not theme settings: they live in the file system and are
  managed as managed files. That is what makes them changeable without a deployment, and what
  makes them absent from a config export.
- `domain_access_logo.install` + `config/schema` — check the install file before upgrading,
  as storage moved between 1.x and 2.x.
