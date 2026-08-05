<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Custom Nid (custom_nid) — agent index

Lets a permitted user set the **node ID** on the node create form. No dependencies.
Core requirement `^9.2 || ^10 || ^11`. (Version `11.0.0` tracks the core major, not semver.)

Key facts:
- Whole module: `custom_nid.module`, `.info.yml`, `.permissions.yml`, `README.md`, `LICENSE.txt`.
- One permission, **`custom_nid access`**, `restrict access: true` — and the restriction is
  load-bearing. Setting a primary key by hand can:
  - collide with an existing node,
  - jump the auto-increment sequence so future IDs skip ranges,
  - break anything assuming IDs are dense or monotonic (paging by ID, incremental sync, external
    references).
- **Grant it for a migration window, then revoke.** It is not a permission to leave assigned.
- Legitimate uses are narrow and all about identifier preservation: legacy URL continuity,
  restoring a deleted node at its original ID, matching an external system. For anything
  repeatable, use Migrate, which sets IDs as part of a mapped, rollbackable process.
