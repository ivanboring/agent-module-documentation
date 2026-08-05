<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# JSON:API Page Limit (jsonapi_page_limit) — agent index

Makes JSON:API's collection **page size limit configurable per route**. Depends on core
`jsonapi`. Core requirement `^10 || ^11`.

Key facts:
- **Core's default cap is 50 items, and the cap exists for a reason:** every item in a collection
  response is loaded, access-checked and serialised. An unbounded page size is a memory risk and a
  denial-of-service lever.
- **Raise it per route, not globally.** The right ceiling is what the site's *slowest* resource can
  serve inside its timeout. A taxonomy of 200 terms is cheap; 200 nodes with rendered fields is
  not.
- **Measure rather than assume** — the cost is per item and scales with what each resource
  serialises, including its relationships.
- No routes, permissions or configuration UI of its own; the limits are configuration.
