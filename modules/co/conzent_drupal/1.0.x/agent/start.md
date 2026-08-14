<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Conzent CMP (conzent_drupal) — agent index

**Embeds the Conzent consent-management platform (cookie banner, IAB TCF v2.2, optional GTM).**

- **Version:** 1.0.x  **Core:** ^10 || ^11  **PHP:** 8.1
- **Config route:** `conzent.settings` → `/admin/config/system/conzent` (`_permission: 'administer site configuration'`).
- **Settings:** `website_key`, `server_url` (blank = Conzent Cloud; set for self-hosted OCI), `gtm_id`, `data_layer`. Form: `src/Form/ConzentSettingsForm.php`.
- **Permission:** `administer conzent` (`restrict access: true`) in addition to the core config permission on the route.
- **Security:** admin-only settings form; outputs a third-party CMP script from the configured server. `server_url`/dashboard link are output through `Html::escape()`. No public/mutating endpoints.
