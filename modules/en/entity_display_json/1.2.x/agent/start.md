<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Entity Display JSON — agent index

Serves **entities as JSON using their display configuration** (`/ejson/…`; gated by `access entity display
json`). Version **1.2.0**. Core `^10.2||^11`.

**SECURITY CAVEAT:** the endpoint does **not** check entity-level access — `build()` loads by UUID
(`loadByProperties`, bypasses access) and serializes **without `$entity->access('view')`**. The builder checks
**per-field** access only, so holders can read **unpublished/node-grant-restricted** entities' non-restricted
fields. Treat the permission as **read-any-entity**; grant only to trusted consumers; add an entity access
check. See `security.md`.
