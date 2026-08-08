<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Apigee Edge (apigee_edge) — agent index

Drupal ↔ **Apigee** (Edge/X) integration — an **API developer portal**: developers, apps, API
keys, API products. Version **4.1.0**. Core `^11`. Depends on core `file`/`user`/`filter`/`options`
+ **`key`**. Requires an **Apigee organization** to connect to.

**Security:** Apigee auth credentials go through the **Key** module (dependency) — not plain config.
Permission **`bypass api product access control`** overrides which developers may consume which APIs
— **trusted admins only**. Also `administer apigee edge`.

**Submodules:** `apigee_edge_teams` (team apps), `apigee_edge_apiproduct_rbac` (RBAC on products),
`apigee_edge_actions` (event reactions), `apigee_edge_debug` (request logging).