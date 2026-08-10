<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Cache Pilot provides simple tools to manage the APCu cache.

---

Cache Pilot **provides simple tools to manage the APCu cache** — viewing/clearing the PHP APCu (user/opcode)
cache from the Drupal admin, for operators managing PHP-level caching. It provides its own permissions.

Use it to inspect/clear APCu. It is a performance/operations tool. Security note: APCu is a **server-level
resource** and clearing it affects all requests/tenants on that PHP process — gate its permission to trusted
admins (clearing caches is a performance-affecting action) and be aware APCu may be shared across sites on the
same server. It has no content or access role beyond its permission. Use the APCu management tools.

---

- Manage the APCu cache.
- View/clear PHP user cache.
- Serve operators.
- Provide its own permissions.
- Serve performance/operations.
- Inspect APCu.
- TREAT APCu as a server-level resource.
- Gate the permission to trusted admins.
- Know APCu may be shared across sites.
- Have no content/access role beyond permission.
- Use the APCu tools.
- Handle APCu.
- Clear APCu.
- Configure the tools.
- Manage cache.
- Handle the cache.
- Inspect cache.
- Clear cache.
- Restrict the permission.
- Provide APCu management.
