<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# JSON:API User Resources (jsonapi_user_resources) — agent index

User-related **JSON:API** endpoints, **registration** in particular. Built on
**`jsonapi_resources`** — the contrib framework for non-entity JSON:API resources — rather than a
REST controller bolted alongside. Requires core `jsonapi`. Routes come from
`Routes::routes()` (a `route_callbacks` entry), not a static routing file.
Version **8.x-1.0-beta2** — **beta**. Core requirement `^10.1 || ^11`.

**The gap it fills:** core's JSON:API follows entity access strictly and has **no way to register**.
Creating a user is not an ordinary entity POST — registration settings, approval mode, password
policy and activation email live in the user module, not the entity API.

**The whole point is an unauthenticated write endpoint, so check four things on the specific
site rather than assuming:**
1. Does it honour **`user.settings.register`**? A site set to admin-only must not accept API
   registrations.
2. Does it respect **admin approval**, creating **blocked** accounts rather than active ones?
3. Does **flood control** apply? An unauthenticated create endpoint without rate limiting is an
   invitation to automated signup.
4. Is **email verification** enforced? An API returning a usable session on registration without
   verifying the address is a different security posture from the site's own form.
