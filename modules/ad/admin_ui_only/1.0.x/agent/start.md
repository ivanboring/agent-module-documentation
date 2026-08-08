<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Admin UI Only — agent index

Blocks **front-end HTML access to non-admin pages** (a request subscriber denies 403/404 to non-admin routes
outside a whitelist) — lockdown for **API-only/decoupled** backends (JSON:API/GraphQL). Requires PHP 8.0.
Version **1.0.3**. Core `^9||^10||^11`.

**Security-positive hardening** — reduces the front-end exposure surface of a headless backend. Ensure the
allowed-routes whitelist is complete (API/login stay reachable); complements, not replaces, per-route access
control.
