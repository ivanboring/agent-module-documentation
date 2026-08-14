<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Omnisend (omnisend) — agent index

**Integrates Drupal with the Omnisend email/SMS marketing API: syncs Webform submissions as contacts; shows lists/campaigns in an admin dashboard.**

- **Version:** 1.1.x
- **Core:** ^9.4 || ^10
- **Depends:** webform:webform
- **Configure:** `/admin/config/services/omnisend` (route `omnisend.settings`, `administer site configuration`).

**Surface:** `OmnisendApi` service (`getLists`, `getCampaigns`, `syncContact`); Webform handler `OmnisendFormHandler`; dashboard/campaigns routes (`access omnisend dashboard`).

**Security (reviewed — sound):** Guzzle with **default TLS verification (on)**; endpoints hard-coded (no SSRF); no `verify=>false`. Caveats: API key stored in `omnisend.settings` config (included in config exports — prefer a Key entity/state/override); the `access omnisend dashboard` permission is referenced in routing but not defined anywhere, so those routes fail closed to uid 1.
