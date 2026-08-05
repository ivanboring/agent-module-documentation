<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Migrate Source Directory (migrate_source_directory) — agent index

Migrate **source plugin** that reads a directory of files as rows. Depends on core `migrate`.
Core requirement `^9 || ^10 || ^11`. No routes, no permissions, no UI.

Key facts:
- Whole module: `src/Plugin/` (the source plugin) + `config/schema`. It is consumed from
  migration YAML, not configured in the admin UI.
- **Fills a genuine gap:** Migrate ships sources for database, CSV, JSON, XML and URLs — not the
  filesystem. Without this, importing a folder starts by generating a manifest CSV that has to be
  regenerated whenever the folder changes.
- Each file becomes a row with path/metadata as source properties for the process pipeline to map
  onto a file or media entity.
- The directory is read **at migration time**, so a folder that changes between `migrate:status`
  and `migrate:import` yields different counts. Relevant when the source is a live share.
- The path comes from migration configuration — written by a developer, not supplied by an end
  user — so it is not an untrusted input in normal use.
