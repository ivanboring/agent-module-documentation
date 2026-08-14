<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Inline Image Saver (inline_image_saver) — agent index

**Validates, downloads, and locally stores inline `<img>` images in rich-text fields on entity presave to prevent broken images.**

- **Version:** 2.0.x
- **Core:** ^10.3 || ^11 · **Depends on:** text, editor
- **Config route:** `inline_image_saver.settings` → `/admin/config/content/inline-image-saver/settings` (permission `administer site configuration`).
- **Config:** `inline_image_saver.settings` (processable_formats, enable_validation + validation_settings, enable_download, prefer_reuse_files, enable_replace, fallback_markup, create_revision, revision_log, skip_on_sync). Defaults: validation/download/revision on, replace off.
- **Hooks/services:** `hook_entity_presave`, `hook_field_info_alter`; services `inline_image_saver` (downloader, Guzzle client), `inline_image_saver.mime` (tagged `inline_image_mime_guesser` collector), config-save subscriber.

**Security:** admin form is permission-gated; no anonymous routes. Note (report, not a hard finding): with download enabled, `InlineImageSaver::downloadImage()` (src/InlineImageSaver.php:363) performs a server-side HTTP GET of the content's `<img src>` URL — an editor-triggered SSRF surface. Guzzle default TLS verification applies (no disabled TLS).

See [configure/settings.md](configure/settings.md).