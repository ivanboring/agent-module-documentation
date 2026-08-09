<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Entity Display JSON leverages the display interface in Drupal to create JSON responses.

---

Entity Display JSON **serves entities as JSON using their view-display configuration** — endpoints under
`/ejson/…` return an entity's display-configured fields as JSON (a lightweight, display-driven alternative to
JSON:API for front ends). Endpoints are gated by an `access entity display json` permission, in the Web
services package.

Use it to expose display-driven JSON to a front end. **Security caveat (this version): the endpoint does not
check entity-level access.** `EntityDisplayJsonController::build()` loads the entity by UUID with
`loadByProperties()` (a storage load that bypasses access) and serializes it **without calling
`$entity->access('view')`**. The builder enforces **per-field** access (it skips fields the user can't view),
but **not** entity access — and core field-view access does not incorporate a node's published status or
node-access grants. So a holder of `access entity display json` can read the display fields (title, body, …) of
entities they cannot view — **unpublished nodes and content hidden by node-access modules** — as long as those
fields aren't individually restricted. Treat the permission as **read-any-entity** until patched: grant it only
to fully-trusted consumers, and prefer adding an `$entity->access('view')` check (403/404 on deny) in the
controller. See the local security.md.

---

- Serve entities as JSON by display.
- Expose /ejson endpoints.
- Offer a JSON:API alternative.
- Gate endpoints by a permission.
- KNOW the endpoint skips entity-level access.
- Understand it loads by UUID via storage (bypasses access).
- Know per-field access is checked but not entity access.
- Know unpublished/node-grant content can leak.
- Treat the permission as read-any-entity.
- Grant it only to fully-trusted consumers.
- Prefer adding $entity->access('view').
- Have limited access enforcement.
- Handle display JSON.
- Serve JSON.
- Configure the endpoints.
- Expose entity data.
- Guard the permission.
- Return JSON.
- Secure the endpoint.
- Provide display JSON.
