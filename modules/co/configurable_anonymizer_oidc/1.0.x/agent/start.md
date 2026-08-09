<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Configurable Anonymizer OIDC — agent index

Skips **anonymizing users based on their OIDC realm** (exclude a configured OIDC realm from anonymization).
Depends on `configurable_anonymizer`, `oidc`. Provides permissions. Version **1.0.0**. Core `^10||^11`.

Privacy/data-handling — **excluding a realm RETAINS those users' real data** while others are scrubbed: only
exclude where retention is intended/compliant; review against privacy requirements. No access role beyond
permission.
