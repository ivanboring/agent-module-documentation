<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# JSON:API Links (jsonapi_links) — agent index

Strips `links` members from JSON:API responses.
Configure at `/admin/config/services/jsonapi/links` (`administer site configuration`).
Version **1.1.0**. Core `^10.3 || ^11`. Depends on `jsonapi`, `user`.

Size and noise: JSON:API is HATEOAS by design, and a front end that constructs its own URLs reads
none of it — a fifty-node collection emits links for every resource and relationship.

**Two deliberate points, because this deviates from a specification:** a **generic** client (a
library, a tool, anything that discovers rather than hard-codes) may depend on links, so this is
safe for a front end you control and unsafe as a general setting; and `links` includes **`self`**,
which is often how a client re-fetches or invalidates a resource — breaking that fails in a way
that looks unrelated.

**Name the security benefit honestly:** removing links makes casual enumeration slightly harder.
That is **obscurity, not access control** — the resources remain reachable. Use `jsonapi_permission`
or entity access for the boundary.