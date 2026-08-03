# acquia_contenthub_site_health — agent start

**Experimental** ("use with caution"). Audits/repairs known Drupal↔Content Hub
incompatibilities on a publisher. Requires `acquia_contenthub`. No UI, permissions, or config.

## Drush
- `acquia:contenthub-fix-config-entities-with-null-uuids` — find config entities with NULL
  UUIDs and assign each a random UUID. NULL config UUIDs break `depcalc`/export (Content Hub
  keys everything by UUID), so run this before a first full publish or when export errors on
  config.

CLI-only utility; no further solution docs.
