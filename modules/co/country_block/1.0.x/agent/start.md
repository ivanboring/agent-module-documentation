<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Country Block — agent index

**Blocks visitors from specific countries** by GeoIP (Smart IP). Provides permissions. Version **1.0.4**. Core
`^10||^11`.

**Coarse geo-gate, not strong security** — GeoIP is approximate + IP changeable (VPN/proxy; spoofable without
trusted proxies): use for compliance/UX, not to protect sensitive content or as the only access control. No
per-content access role.
