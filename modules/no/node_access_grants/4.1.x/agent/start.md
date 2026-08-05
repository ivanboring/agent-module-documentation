<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Node Access Grants (node_access_grants) — agent index

Object-oriented wrapper for Drupal's **node access grants** hooks. PHP >= 7.1.
Core requirement `^10 || ^11`. **No routes, permissions, config or UI** — a developer library.

Key facts:
- Whole module: `src/NodeAccessGrantsCollection.php`, `src/NodeAccessGrantsInterface.php`,
  `node_access_grants.services.yml`, `.module`. Enabling it alone changes nothing.
- It improves the **ergonomics** of grants, not their semantics. Everything hard about node access
  remains true:
  - grants are **OR-combined across modules** — another module granting `view` wins;
  - a **node access rebuild** is required after policy changes, and listings/search are wrong
    until it completes;
  - mistakes produce **silent over-disclosure**, so grants code needs tests written specifically
    to assert what must *not* be visible.
- Useful when writing a bespoke access module; not a substitute for one. If a policy-level module
  fits (`rac`/ADVA, `access_policy`, Group), prefer it.
