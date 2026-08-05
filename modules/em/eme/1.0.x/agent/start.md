<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Entity Migrate Export (eme) — agent index

Generates a **migration module** that recreates selected content entities. No hard dependencies.
Core requirement `^8.9 || ^9 || ^10 || ^11`.

| Route | Path | Permission |
|---|---|---|
| `eme.eme_export_form` | `/admin/config/development/entity-export` | `export content` |
| `eme.collection` | `/admin/config/development/entity-export/collection` | `export content` |

Key facts:
- **Both permissions are `restrict access: TRUE`** (`export content`,
  `manage content export settings`) — and that is the right framing: exporting content extracts it
  in bulk to files. Treat it as a **data-egress control**, not a convenience. On a site with
  personal data, granting `export content` is equivalent to granting a full extract.
- Output is a real module — migration YAML plus data files — so it can be committed, reviewed and
  run with ordinary migrate tooling (`drush migrate:import`) on any environment.
- The **collection** form gathers related entities, which is what makes the output runnable rather
  than a set of orphaned rows with broken references.
- `migrate_plus` is in **`require-dev`**, not `require` — confirm it is present on the target site
  before running the generated migrations.
- Compare with Default Content: this produces standard migrations (rollbackable, mappable,
  re-runnable) rather than a distinct serialisation format.
