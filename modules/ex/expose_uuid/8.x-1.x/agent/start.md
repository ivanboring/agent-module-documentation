<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Expose UUID — agent index

**Exposes (and allows editing) the entity UUID in edit forms**, gated by the `edit uuid` permission. Version
**8.x-1.2**. Core `^9||^10||^11`.

Administration utility — it lets the UUID be **changed**, and a UUID is a stable identifier for references/config-
sync/JSON:API/integrations, so **changing it can break those**. Grant `edit uuid` only to trusted admins; change
deliberately. No broader access role.
