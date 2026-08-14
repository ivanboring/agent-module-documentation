<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Entity Share Bypass Fields (entity_share_bypass_fields) — agent index
**Entity Share Client import processor that strips missing / named fields from incoming synced entity data on the pulling site.**

- **Version:** 1.0.x
- **Core:** ^9 || ^10 || ^11
- **Depends:** entity_share:entity_share_client
- **Plugin:** `@ImportProcessor` id `entity_share_bypass_fields` ("Bypass fields"), stage `prepare_entity_data` (-100), not locked.
- **Config:** enable/configure per import config at `/admin/config/services/entity_share/import_config`; setting `manual_bypassed_fields` (comma-separated field machine names).
- **Behavior:** loads local entity by UUID, `unset()`s listed attributes and any non-existent `field_*` attribute from the payload before import.

**Security:** Despite the "bypass fields" name, this does NOT bypass field-level access control and does NOT expose restricted values — it only *removes* attributes from data the client already pulled, on the client side. It does not alter what the remote entity_share channel serves. Enabling it is gated by Entity Share Client's own admin permissions. No security findings.
