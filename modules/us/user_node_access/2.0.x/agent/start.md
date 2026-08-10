<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# User Node Access — agent index

Meant to **restrict a node to specific users**. Depends on core `node`. Version **2.0.0**. Core `^9||^10||^11`.

**SECURITY WARNING (danger 3, verified):** does **not** reliably restrict access. Its `hook_node_access()` deny
is guarded by `$node == routeMatch node`, so it fires **only on the node's own `/node/<id>` page**; every other
path (Views listing, entity reference, `?_format=json`/JSON:API, other routes) **bypasses** it — and it
implements **no node grants**, so query-level listings never filter the node out. A "restricted" node is broadly
readable. Plus a loop bug mis-denies allowed users not listed first. **Do not rely on it** — use grant-based
node access. See `security.md`.
