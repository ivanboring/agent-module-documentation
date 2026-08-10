<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Entity Deep Token — agent index

Exposes **values from deep within an entity's references as tokens** (pull a referenced entity's field value
via a token). Depends on `token`. Version **1.0.3**. Core `^10||^11`.

Developer/tokens — deep tokens can **surface referenced-entity data** (which may be restricted): be careful
**where** you use them; token replacement doesn't enforce entity access. No access role.
