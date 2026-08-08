<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Decoupled Kit provides tools solving common tasks of a decoupled (headless) Drupal architecture, with block and redirect submodules.

---

Running Drupal headless — content in Drupal, front end elsewhere — raises recurring problems (exposing block content, handling redirects across the boundary). Decoupled Kit provides tools for those, with `decoupled_kit_block` and `decoupled_kit_redirect` submodules. It is decoupled-architecture infrastructure. The security consideration for any headless setup is the API surface: content exposed to the front end (via JSON:API/REST/GraphQL) must apply access, and redirects handled across the boundary must not become open redirects. Decoupled Kit helps with the plumbing; confirm the exposed data respects access and redirect targets are controlled.

---

- Solve decoupled Drupal tasks.
- Expose blocks to a front end.
- Handle headless redirects.
- Support a decoupled build.
- Use decoupled block/redirect submodules.
- Confirm API access is applied.
- Avoid open redirects across the boundary.
- Provide headless plumbing.
- Connect Drupal to a front end.
- Handle decoupled routing.
- Enable when needed.
- Keep disabled otherwise.
- Restrict administration.
- Confirm on your site.
- Test before production.
- Review configuration.
- Pair with related modules.
- Verify theme fit.
- Match your use case.
- Confirm compatibility.
- Use deliberately.
- Review after upgrades.