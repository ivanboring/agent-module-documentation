<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Webform Datahub (datahub_webform_handler) — agent index

**Webform handler that POSTs submissions to an external Datahub registration API.**

- **Version:** 1.0.x  **Core:** ^9 || ^10 || ^11  **Depends:** webform
- **Handler:** `@WebformHandler webform_datahub` (`src/Plugin/WebformHandler/WebformDatahub.php`); on `postSave` → token fetch → build payload → POST.
- **Services:** `GetAccessToken` (`POST <endpoint>/api/secure/token`, user/pass as headers), `BodyValues` (payload), `DatahubIntegration` (`POST <endpoint>/api/attendee/registration`, `token` header).
- **Config route:** `/admin/config/services/webform_datahub-config` (`WebformDataHubConfigForm`), permission `access administration pages`; config `webform_datahub.settings` (endpoint_api, username, password_field, accessToken).
- **Security (report):** username & password stored in **plaintext config** as plain textfields, not a Key entity (`WebformDataHubConfigForm.php:62-67,132-137`; consumed `GetAccessToken.php:20-22`); credentials sent as plain HTTP headers; TLS depends on admin entering an `https://` endpoint (default Guzzle, no `verify=>false`); full request/response logged (`DatahubIntegration.php:38-39`). No inbound callback. Config gated only by `access administration pages`.
