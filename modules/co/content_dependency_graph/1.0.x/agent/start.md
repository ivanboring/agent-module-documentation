<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Content Dependency Graph (content_dependency_graph) — agent index

**Read-only admin visualization of a node's reference relationships.**

- **Version:** 1.0.x  **Core:** ^10.3 || ^11  **Depends:** node, taxonomy, media
- **Permission:** `access content dependency graph` (both routes).
- **Routes:** `/admin/content/dependency-graph` (index, 100 recent nodes, access-checked query) and `/admin/content/dependency-graph/{node}` (per-node graph) — `src/Controller/GraphController.php`.
- **Security:** permission-gated, read-only; index query uses `accessCheck(TRUE)`. No mutation endpoints.
