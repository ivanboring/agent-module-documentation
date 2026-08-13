<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# AutoAlt.ai (autoalt) — agent index

**Generates AI alt text for images via the AutoAlt.ai API, single and bulk.**

- **Version:** 2.0.x (2.0.5), core `^10 || ^11`, package Content, depends on `drupal:image`
- **Config route:** `autoalt.settings` → `/admin/config/content/autoalt` (perm `administer site configuration`) — stores `api_key`
- **Bulk UI:** `/admin/config/media/autoalt/bulk-alt`; history `/admin/content/autoalt/history`
- **Endpoints:** `POST /api/autoalt/generate` (**`access content`**), `save-alt` (`administer media`), `list-fids`/`availcredit`/`totalImagesCount`/`shortAltTextCount`/`processedByAutoaltCount` (`administer site configuration`), `history`/`history_page` (`access content`), `get-data-from-plugin` (`access administration pages`)
- **Outbound:** `https://ahxdfj.autoalt.ai/api/...` via `@http_client` (default TLS verify).
- **Security:** RECORDED Danger 2 — `/api/autoalt/generate` (`AutoaltController::generate`, `src/Controller/AutoaltController.php:105`, loads file `:118`, `file_get_contents` `:158`, posts with `api_key` `:183`) is gated only by `access content` yet loads any `fid` and sends it + site API key to the AI provider → unauth AI cost-abuse + arbitrary/private file disclosure.

See [api/endpoints.md](api/endpoints.md) and [configure/settings.md](configure/settings.md)
