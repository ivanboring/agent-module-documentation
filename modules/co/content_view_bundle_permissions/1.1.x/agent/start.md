<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Content View Bundle Permissions — agent index

Per-bundle permissions that **filter the content admin View** (listing). Version **1.1.0**. Core `^10||^11`.

Scope: Views listing ONLY (via `hook_views_query_alter`) — honestly named "in content view"; NOT a general entity-access control (no `hook_node_access`/grants, so canonical pages + JSON:API/REST are unaffected). Depends on core `views`, `node`.