<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Consent Mode (consent_mode) — agent index

Emits `gtag('consent','default', …)` with configurable values ahead of other Google tags.
Configure at `/admin/config/consent_mode`. Version **1.0.6**.
Core `^8 || ^9 || ^10 || ^11`. No dependencies.

Permission: `access consent mode config` — **not** `restrict access`, so it is delegable.

Config `consent_mode.settings`, all booleans, **all denied by default** except the master switch:
`consent_mode_enabled: 1`, `ad_storage: 0`, `ad_user_data: 0`, `ad_personalization: 0`,
`analytics_storage: 0`, `functionality_storage: 0`, `personalization_storage: 0`.

**This module sets defaults only.** It does not collect consent and never sends
`gtag('consent','update')`. A CMP or banner must do that, or the site denies forever — compliant,
but analytics will read near zero. Say this whenever recommending it standalone.