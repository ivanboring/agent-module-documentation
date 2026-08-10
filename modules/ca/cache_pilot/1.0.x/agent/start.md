<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Cache Pilot — agent index

**Simple tools to manage the APCu (PHP user/opcode) cache**. Provides permissions. Version **1.0.0-alpha3**. Core
`^10.3||^11`.

Performance/operations — APCu is a **server-level resource** (may be shared across sites; clearing affects all
requests): gate to trusted admins. No content/access role beyond permission.
