<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Entitree provides a hierarchical structure for entities.

---

Entitree provides a **hierarchical (tree) structure for entities** — organizing entities (nodes, terms,
etc.) into parent/child trees, with submodules for node/taxonomy integration, location rules and permissions.
It provides its own permissions, ships `entitree_node`, `entitree_taxonomy_term`, `entitree_location_rules` and
`entitree_permissions` submodules.

Use it to build entity hierarchies. It is a site-structure/content feature. Note it has an
`entitree_permissions` submodule — if you use it to gate access by tree position, ensure that access is
actually enforced where it matters (a hierarchy is a structure, not automatically an access boundary). Its own
permissions gate configuration. Configure the entity tree.

---

- Provide entity hierarchies.
- Organize entities into trees.
- Support node/taxonomy trees.
- Ship node/taxonomy/location/permissions submodules.
- Provide its own permissions.
- Build parent/child structures.
- Ensure tree-based access is enforced where it matters.
- Treat a hierarchy as structure, not an auto access boundary.
- Have no broad access-control role beyond permissions.
- Configure the entity tree.
- Handle entity trees.
- Build hierarchies.
- Configure the tree.
- Handle the structure.
- Organize entities.
- Configure hierarchy.
- Handle trees.
- Structure entities.
- Set the tree.
- Provide entity hierarchy.
