<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Database cache prefix prepends a configurable string to every cache id written to the database backend.

---

The need arises when several Drupal installations share one cache store and would otherwise collide. Shared hosting where one database serves multiple sites; a multi-site arrangement with a common cache table; a blue-green deployment where two versions run against the same infrastructure and must not read each other's entries; a set of environments pointed at one Redis or database for convenience. Without a prefix the cache id `config:system.site` means different things in each, and whichever writes last wins — which produces the confusing class of bug where a setting changed on one site appears on another, or a deployment picks up the previous release's rendered output. A prefix scopes the keys so the collision cannot happen. Version **2.0.0-rc3** — a release candidate — on core `^10.3 || ^11`. Three things worth attaching. **Changing the prefix invalidates everything** — which is the intended behaviour when a new deployment wants a clean cache, and is a cold start on a busy site, so a prefix change is a deployment event rather than a configuration tweak. **A prefix is not isolation** in the security sense: entries are still in the same table, readable by anything with database access, so it prevents accidental collision rather than deliberate reading — genuinely separate stores are the answer where the requirement is confidentiality between tenants. And **core already offers `$settings['cache_prefix']`** for the database backend in some arrangements, so the first question is whether the site needs a module for this at all or whether the setting covers it, which depends on the backend in use.

---

- Separate cache entries between sites.
- Avoid cache collisions on shared hosting.
- Scope cache ids per environment.
- Support a blue-green deployment.
- Prevent one site reading another's cache.
- Isolate cache between multisite instances.
- Invalidate everything on a prefix change.
- Support a shared cache backend.
- Fix a setting appearing on the wrong site.
- Scope cache per deployment version.
- Separate staging and production cache.
- Support several sites on one database.
- Prevent stale rendered output after release.
- Scope cache for a tenant.
- Support a shared Redis instance.
- Force a cold cache deliberately.
- Isolate cache during a migration.
- Support a multi-instance architecture.
