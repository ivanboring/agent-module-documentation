<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Role Access Control (rac) — agent index

Per-role content access built on **ADVA** (Advanced Access). Depends on core `user` and `adva`.
Core requirement `^9 || ^10 || ^11 || ^12`. Submodule: `rac_relations` (related entities).
`configure:` points at **`adva.settings`** — it is administered through ADVA, not its own page.

Key facts:
- **Permissions are generated at runtime** by `AccessPermissions::permissions()` via a
  `permission_callbacks:` entry — grep the class, not the YAML.
- Implemented as **node access grants** through ADVA plugins (`src/Plugin/`). Two standing
  consequences of that mechanism:
  1. **Grants are OR-combined across modules.** Another module granting `view` overrides a RAC
     restriction. If content is visible that should not be, look for a second grants provider
     before suspecting RAC.
  2. **Node access needs rebuilding** after configuration changes on an existing site
     (`drush php:eval 'node_access_rebuild();'`), and until it is, listings and search can be
     wrong.
- Because grants apply at query level, they cover Views and search — the main advantage over a
  display-layer restriction (contrast the `entity_access_password` finding elsewhere in this
  collection, where display-only protection leaked through JSON:API and Views).
