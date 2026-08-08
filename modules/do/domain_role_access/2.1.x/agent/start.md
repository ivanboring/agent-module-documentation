<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Domain Role Access — agent index

Grants **domain access based on user roles** (per-role domain access) — built on Domain / Domain Access.
Depends on `domain`, `domain_config`. Version **2.1.0**. Core `^9||^10||^11`.

Correct foundation: **decorates** Domain Access's `getAccessValues()` to add role-derived domains, so
role-based access flows through **Domain Access's existing node-grants (query-level) enforcement** (extends,
not bypasses). Configure the role→domain mapping to match intent; enforcement is as correct as Domain
Access's config.
