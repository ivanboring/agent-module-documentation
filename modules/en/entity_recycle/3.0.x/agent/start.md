<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Entity Recycle — agent index

Adds a **recycle bin so deleted entities can be restored** (undo for deletes; protects against accidental/
malicious deletion). Depends on core `node`. Provides permissions. Version **3.0.0-alpha1**. Core
`^10.1||^11`.

**Data-protection-positive.** Note the bin **retains "deleted" content** (matters for data-retention/erasure —
ensure real purge when required); gate restore/permanent-delete to trusted roles. No other access role.
