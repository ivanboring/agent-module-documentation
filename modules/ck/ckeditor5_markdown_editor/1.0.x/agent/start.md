<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# CKEditor5 Markdown editor (ckeditor5_markdown_editor) — agent index

**Activates CKEditor 5's markdown-gfm plugin so a text editor outputs GitHub-Flavored Markdown instead of HTML.**

- **Version:** 1.0.x (1.0.0-beta3)
- **Core:** `^10 || ^11`
- **Dependency:** `drupal:ckeditor5`

Key surfaces:
- CKEditor5 plugin `ckeditor5_markdown_editor_markdown_gfm` (`MarkdownOutputSettings`) — adds the per-format "Markdown output" checkbox.
- Drush commands: `ckeditor5_markdown_editor:install`, `ckeditor5_markdown_editor:update` — download markdown-gfm into `/libraries/ckeditor5/plugins/markdown-gfm`.
- Service `ckeditor5_markdown_editor_cli_commands` (`CliCommandWrapper`, args library.discovery / http_client / config.factory).
- `hook_requirements()` + `hook_ckeditor5_plugin_info_alter()` gate the plugin on files-present and version-match.
- Config `ckeditor5_markdown_editor.settings` (`ckeditor_version`, `plugins_version_installed`).

**Security:** No findings. No routes or permissions of its own. The Drush install/update download hits `https://registry.npmjs.org` with Guzzle-default (verified) TLS — no `verify => false` — and the URL comes from core/config, never request input; the tarball is extracted with core's Tar archiver. CLI-only, admin-run.
