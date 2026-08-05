<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Prelinker manages `preload` and `preconnect` resource hints as configuration, emitting them either as `Link:` response headers or as `<link>` elements in the head.

---

Resource hints tell the browser to start work it would otherwise only discover later. `preconnect` opens the TCP and TLS connection to a host — a font provider, an image CDN, an analytics endpoint — before anything on it is requested, saving the handshake round trips that otherwise sit in the critical path. `preload` fetches a specific file early. Both normally live in a theme's `html.html.twig` or in a `hook_page_attachments()`, meaning a deploy to add one. This module makes them configuration, with preconnect targets as their own **configuration entities** (listable, exportable, individually editable) and the choice of delivery mechanism as a setting. Version **3.0.0**, core requirement **`^11`** — Drupal 11 only. The `Link:` header option is the more interesting of the two: a header can be acted on by an intermediary and, with HTTP/2 or 3, is available to the browser before the HTML body arrives, which is earlier than a tag in the head. Two cautions apply to resource hints generally. **They are a budget, not a bonus** — every preconnect holds open a connection and every preload competes for bandwidth with the resources that actually determine when the page becomes usable, so four or five hints is the useful range and twenty is a regression. And the routes here are guarded by `_permission: 'administer'`, which is not a permission any core module defines, so in practice only user 1 reaches them unless something else declares that name — worth knowing before reporting the pages as broken.

---

- Preconnect to a font host.
- Preconnect to an image CDN.
- Preload a critical stylesheet.
- Reduce TLS handshake latency.
- Improve Largest Contentful Paint.
- Add resource hints without a deploy.
- Send hints as Link headers.
- Manage preconnects as configuration.
- Export hints between environments.
- Improve a Lighthouse score.
- Preconnect to an analytics endpoint.
- Speed up third-party asset loading.
- Prioritise a hero image.
- Support a performance sprint.
- Reduce time to first byte impact.
- Preconnect to a payment provider.
- Tune a landing page's load.
- Audit which hosts are contacted early.
