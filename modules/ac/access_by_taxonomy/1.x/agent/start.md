<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Access by Taxonomy (access_by_taxonomy) — agent index

Restricts **node access by taxonomy term** ('Allowed users'/'Allowed roles' fields) via Drupal's
**node grants** system. Version **1.2.3**.

**Correct mechanism (positive):** node grants enforce at the **query level** (restricted nodes vanish
from listings/Views/search, not just the canonical page). Verified: unrestricted nodes get a
**public** grant (correct default). Realms: public, role, user, owner, own-unpublished, view-any.

Run **`node_access_rebuild`** after enabling/config changes. Node access is **additive** across
modules. Configure the access taxonomy + allowed-users/roles to your policy.