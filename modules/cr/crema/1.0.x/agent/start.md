<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Class Replacement Manager (crema) — agent index

**PoC: 'replace' PHP classes declared in a module's info.yml via a custom class loader.**

- **Version:** 1.0.x  **Core:** ^9 || ^10 || ^11
- **Mechanism:** `CremaServiceProvider` registers `CremaClassLoader` (prepended to the autoloader); `ClassCamouflage` + `ClassCamouflageTokenParser`/`TokenParserShim` relocate the replacement under the original FQCN.
- **Config:** driven only by consuming-module `info.yml` declarations; no routes/permissions/services/UI.
- **Security:** experimental proof-of-concept; manipulates the global autoloader — developer tool, use with care. No user-facing endpoints.
