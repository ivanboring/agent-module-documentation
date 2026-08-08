<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Acquia CMS Headless bundles and configures the decoupled stack (JSON:API, Next.js, Consumers, OAuth) for progressively decoupled or purely headless Acquia CMS sites.

---

Acquia CMS Headless turns a Drupal/Acquia CMS site into a headless or progressively decoupled
backend for JavaScript front ends, primarily Next.js. Rather than inventing new APIs, it composes and
pre-configures an established decoupled stack: JSON:API (with JSON:API Extras and menu items), the
Next.js integration modules (`next`, `next_jsonapi`), Consumers and Simple OAuth for authenticated
API access, and OpenAPI UI (ReDoc/Swagger) for API documentation. Its optional `acquia_cms_headless_ui`
submodule adds the admin UI/dashboard for managing headless settings, consumers and tokens.

Use it to stand up a decoupled Acquia CMS quickly: it wires content types and API exposure so a Next.js
front end can consume content over JSON:API with OAuth-secured requests, and it exposes the OpenAPI
docs for that surface. Because it enables authenticated web-service access, the security posture that
matters is the Simple OAuth configuration — key material, token lifetimes, and which consumers/scopes
are allowed — plus which entities are exposed through JSON:API. It provides its own permissions and
Drush commands for headless setup tasks. It carries a broad dependency set (Acquia CMS common/tour,
consumers, jsonapi_extras, next, openapi_*), so it expects the Acquia CMS ecosystem.

---

- Stand up a headless/decoupled Acquia CMS backend.
- Serve content to a Next.js front end.
- Pre-configure JSON:API for decoupled delivery.
- Secure API access with Simple OAuth.
- Register API consumers via the Consumers module.
- Expose OpenAPI docs (ReDoc/Swagger) for the API.
- Enable progressive decoupling of a Drupal site.
- Add the headless admin UI via acquia_cms_headless_ui.
- Manage OAuth tokens and consumers.
- Expose menus over JSON:API menu items.
- Use jsonapi_extras to shape the API output.
- Configure token lifetimes and scopes.
- Control which entities JSON:API exposes.
- Run headless setup via provided Drush commands.
- Administer headless settings via permissions.
- Integrate next and next_jsonapi modules.
- Protect Simple OAuth key material.
- Build a purely headless site on Acquia CMS.
- Wire content types for API consumption.
- Depend on the Acquia CMS ecosystem modules.
