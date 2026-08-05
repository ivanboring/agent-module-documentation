<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Varbase Email (varbase_email) — agent index

A themed HTML email template for Varbase sites. `core_version_requirement: ~11.4.0`.

Key facts:
- **`dependencies: {}`** in `varbase_email.info.yml` — it declares no Drupal module
  dependencies. Everything it needs comes from `composer.json`, so enabling it via `drush en`
  without composer-installing the project gives you a template with nothing to render it.
- The whole rendering surface is one file: `templates/varbase_emails.html.twig`, with styles in
  `css/theme` and hook handlers in `src/Hook`. No routes, no permissions, no config forms of its
  own.
- Composer requires: `drupal/symfony_mailer ~1||~2`, `drupal/easy_email ~3`,
  `drupal/ace_editor ~2`, `drupal/pathologic ~2`, `drupal/token_filter ~2`, plus CKEditor 5
  plugin packs (`ckeditor5_plugin_pack`, `ckeditor_emoji`, `ckeditor_bidi`,
  `ckeditor5_paste_filter`, `editor_advanced_link`, `ckeditor_media_embed`) and `blazy`/`slick`.
- **Pathologic is load-bearing**, not decorative: mail is rendered outside a page request, so
  relative URLs in body content must be rewritten to absolute or links in delivered mail break.
- `includes/updates/` + `includes/updates.inc` carry cross-release config updates — the shared
  Varbase pattern.
- Requires the `vardot/varbase-patches` composer plugin in `config.allow-plugins`.
