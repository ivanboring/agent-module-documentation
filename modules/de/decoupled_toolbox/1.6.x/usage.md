<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Decoupled Toolbox contains common features for decoupled websites.

---

Decoupled Toolbox bundles **common features for decoupled (headless) Drupal sites** — a toolbox of helpers
(color/duration fields, comment/group/redirect/weight support, decoupled router, OpenAPI integration) exposed to
a front-end via JSON:API, delivered as optional submodules. It provides its own permissions, in the Decoupled
package.

Use it to smooth headless/JSON:API delivery. It is a decoupled/integration feature. Security note: decoupled
delivery **exposes content over the API** — JSON:API/REST enforce **entity and field access**, so the standard
rule applies: restrict fields/resources to what should be public, keep write endpoints permission-gated, and
review what the front-end is allowed to read. It has no access-control role of its own beyond its permissions.
Enable the submodules you need.

---

- Bundle decoupled helpers.
- Add color/duration/redirect/weight support.
- Provide a decoupled router.
- Integrate OpenAPI.
- Deliver via JSON:API.
- Provide optional submodules.
- EXPOSE content over the API.
- Rely on JSON:API entity/field access.
- Restrict fields/resources to public.
- Keep write endpoints gated.
- Have no access-control role beyond permissions.
- Enable the needed submodules.
- Handle decoupled features.
- Serve headless.
- Configure the toolbox.
- Expose content.
- Handle the integration.
- Support decoupled.
- Review API exposure.
- Provide a decoupled toolbox.
