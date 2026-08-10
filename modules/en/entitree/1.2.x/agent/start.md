<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Entitree — agent index

Provides a **hierarchical (tree) structure for entities** (node/taxonomy trees; `entitree_node`/
`entitree_taxonomy_term`/`entitree_location_rules`/`entitree_permissions` submodules). Provides permissions.
Version **1.2.0**. Core `^10||^11`.

Site-structure — if `entitree_permissions` gates access by tree position, ensure it's actually enforced (a
hierarchy isn't automatically an access boundary).
