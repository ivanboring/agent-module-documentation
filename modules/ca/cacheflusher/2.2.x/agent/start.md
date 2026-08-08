<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# CacheFlusher — agent index

Adds a **cache-flush button to the admin toolbar** — one-click cache clear (no performance page /
`drush cr`). Gated by its own permission. Version **2.2.0**. Core `^10||^11`.

Admin/UX convenience; grant to trusted admins only (frequent full clears affect performance while
caches rebuild).
