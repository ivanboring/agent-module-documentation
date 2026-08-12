<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Temporary Admin Login — agent index

**Temporary token-based admin login links**. Version **1.0.1**. Core `^9||^10||^11`.

**SECURITY (1.0.1):** `/temp-admin-login/{token}` is `_access: TRUE` and **always logs in as user 1 regardless of the chosen role** (role ignored); token uses `mt_rand` (predictable, not `random_bytes`) and is **reusable** (no single-use) → every link is a reusable super-admin credential. Verified live (role='authenticated' → logged in as user 1, /admin 200). Depends on core `user`.