<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Apigee Edge integrates Drupal with Apigee (Edge or X), Google's API-management platform, turning a Drupal site into an API developer portal: developers register, create apps, get API keys, and subscribe to API products, with Drupal as the front end over Apigee's backend.

---

An API program needs a portal — somewhere developers sign up, read docs, create an application, receive credentials and manage their usage. Apigee provides the API gateway and the entities (developers, apps, API products); this module makes Drupal the portal over them, synchronising Drupal users with Apigee developers and exposing app and key management as Drupal entities and forms.

It is a substantial integration with real security surface, and the permission to note is **`bypass api product access control`** — API products gate which developers may consume which APIs, and that permission overrides the gate, so it belongs only to trusted administrators. There is also `administer apigee edge`. The connection to Apigee is authenticated with credentials that, correctly, are handled through the **Key** module (a dependency), so the Apigee auth secret lives in a Key entity rather than plain config.

The submodules extend it: `apigee_edge_teams` adds team-owned apps, `apigee_edge_apiproduct_rbac` adds role-based access to API products, `apigee_edge_actions` adds Rules-style reactions to Apigee events, and `apigee_edge_debug` adds request logging. It requires an Apigee organization to connect to — without an Apigee backend it has nothing to integrate. For anyone running an API program on Apigee, it is the official portal building block.

---

- Build an API developer portal.
- Let developers register for API access.
- Let developers create apps.
- Issue API keys to developers.
- Subscribe apps to API products.
- Sync Drupal users with Apigee developers.
- Manage apps as Drupal entities.
- Gate APIs by product access.
- Restrict bypass of product access control.
- Store Apigee credentials in a Key entity.
- Add team-owned apps with apigee_edge_teams.
- Add RBAC on API products.
- React to Apigee events with actions.
- Log Apigee requests for debugging.
- Front Apigee with Drupal.
- Onboard API consumers.
- Provide app credential management.
- Connect to an Apigee organization.
- Administer the Apigee integration.
- Run an API program portal.
- Manage API product subscriptions.
- Grant admin-only product bypass.