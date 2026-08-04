<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Phrase TMS Translator (tmgmt_memsource) — agent index

TMGMT translator plugin (`id: memsource`) that pushes Drupal job items to Phrase TMS / Memsource
as XLIFF and pulls translations back. Configured as a TMGMT *Provider* entity, not a global
settings form. Depends on `tmgmt` + `tmgmt_file`. Provides config schema; no permissions of its
own, no Drush.

- **Set up the provider, every setting key, routes/webhook, cron pulling, file translation** →
  [configure/translator.md](configure/translator.md)

Key facts:
- Configure route: `entity.tmgmt_translator.collection` (Configuration → Regional and language →
  Translation Management → Providers). The plugin UI lives in `MemsourceTranslatorUi`.
- Settings live on the `tmgmt_translator` config entity's `settings` map (schema
  `tmgmt.translator.settings.memsource` covers `auto_accept`, `url`, `client_id`,
  `client_secret`; the UI also stores `service_url`, `memsource_user_name`, `memsource_password`,
  `enable_file_translation`, `memsource_cron_*`, `memsource_connector_token`,
  `memsource_update_job_status`).
- API token is cached in Drupal `state` under `tmgmt_memsource.token.<translator_id>`; password is
  hex-obfuscated with the `MEMSOURCE_V2___` prefix (reversible, not encryption).
- Routes: `/tmgmt_memsource_callback` (webhook, **unauthenticated**), `/no_preview` (unauth static
  text), `/pull_all_remote_translations` (gated by `administer tmgmt`+`accept translation jobs`).
- Cron: `memsource.cron_task` (also force-run from `hook_cron`) pulls completed translations inside
  the configured start/end hour window.
- SECURITY: the `/tmgmt_memsource_callback` webhook is unauthenticated and triggers state changes +
  outbound API downloads (see the module-root `security.md`, local-only).
