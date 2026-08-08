<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Decoupled Pages provides a quick and easy way to create Drupal routes that serve single-page applications (SPAs).

---

Decoupled Pages provides a quick, easy way to create Drupal routes that serve single-page applications
(SPAs) — so a JavaScript app (React, Vue, etc.) can be mounted at a Drupal path, with Drupal handling the
route/page shell and the SPA taking over rendering client-side. It ships a `decoupled_pages_test` submodule.
This suits progressively-decoupled setups where certain pages are full SPAs within an otherwise
Drupal-rendered site.

Use it to embed SPAs at Drupal routes. It is a decoupled/developer feature; the route serves the SPA shell
and access to the route is governed by normal route access (define the route's access requirements as
needed), while the SPA's own data access (typically via JSON:API/REST) is governed separately. Define the
decoupled page routes and their SPA assets.

---

- Serve SPAs at Drupal routes.
- Mount a JS app at a path.
- Support progressive decoupling.
- Provide the page shell for a SPA.
- Ship a test submodule.
- Embed React/Vue apps.
- Govern route access normally.
- Define route access requirements.
- Handle SPA data access separately.
- Define decoupled page routes.
- Serve SPA assets.
- Create SPA routes quickly.
- Progressively decouple pages.
- Mount client-side apps.
- Configure SPA routes.
- Serve app shells.
- Embed single-page apps.
- Handle decoupled routes.
- Support hybrid sites.
- Create SPA pages.
