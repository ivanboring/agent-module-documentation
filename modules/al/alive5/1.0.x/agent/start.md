<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Alive5 (alive5) — agent index

**Embeds the Alive5 live-chat widget with admin-configurable, cache-safe page display rules.**

- **Version:** 1.0.x (1.0.0)
- **Core:** ^10 || ^11
- **Configure route:** `alive5.settings` → `/admin/config/system/alive5` (perm: `administer alive5`, restricted)
- **Key service:** `alive5.widget_manager` (`Alive5WidgetManager`) decides per-request widget attachment from display rules
- **Permission:** `administer alive5` (restricted)
- **Security:** single admin config route, permission-gated; only outbound effect is the admin-configured third-party Alive5 script. No anonymous mutating endpoints.
