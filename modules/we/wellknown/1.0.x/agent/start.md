<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Well-Known Paths (wellknown) — agent index

Define `/.well-known/` URLs and their content from configuration. No dependencies.
Core requirement `^10 || ^11`. **Release is 1.0.0-alpha2 — alpha.**
Settings at `/admin/config/development/well-known`, gated by `administer site configuration`.

Key facts:
- **Routes are generated dynamically** by `src/Routing/` from the stored configuration — the
  static `wellknown.routing.yml` contains only the settings form. Grepping the routing file will
  not show the well-known paths a site actually serves; read the config
  (`drush cget wellknown.settings`).
- **Unusual directory layout:** `schema/wellknown.schema.yml` and `install/wellknown.settings.yml`,
  *not* the conventional `config/schema` and `config/install`. Worth knowing when looking for the
  defaults.
- Solves a real Composer-site problem: a hand-placed file in the docroot is at risk from every
  deployment; configuration survives and travels with `drush cex`/`cim`.
- **Everything served here is public by definition.** `security.txt` is meant to be; a
  domain-verification token is a secret that happens to be published at a known URL. Do not put
  anything in a well-known path that would matter if indexed — because it will be.
- RFC 8615 is the governing spec; path names are not arbitrary if a consumer expects a specific one.
