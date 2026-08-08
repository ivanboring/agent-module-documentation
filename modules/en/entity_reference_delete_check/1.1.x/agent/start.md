<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Entity Reference Delete Check — agent index

Warns/prevents **deleting an entity still referenced by entity-reference fields** (scans references on delete
→ avoid dangling references). `entity_reference_delete_check_paragraph_url` submodule. Version **1.1.0**. Core
`^10.3||^11`.

Data-integrity/admin — surfaces where an entity is used; no access role.
