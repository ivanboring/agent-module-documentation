<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
CKEditor5 Markdown editor activates CKEditor 5's official markdown-gfm plugin on a text editor so it outputs GitHub-Flavored Markdown instead of HTML.

---

It solves the problem of authoring lightweight Markdown inside the standard WYSIWYG. Because the actual CKEditor JS plugin is a third-party npm asset not bundled with the module, it ships Drush tooling to fetch the assets into `/libraries/ckeditor5/plugins/markdown-gfm`. `hook_requirements()` and `hook_ckeditor5_plugin_info_alter()` detect whether the plugin files exist and whether their version matches the installed CKEditor core version, surfacing an admin status-report warning and a logger error, and hiding the plugin when missing. A `MarkdownOutputSettings` CKEditor5 plugin adds a "Markdown output" checkbox to each text format's editor settings, and `hook_library_info_alter()` attaches the markdown library to core's CKEditor5 library only for editors that opted in.

Operational flow: `drush en ckeditor5_markdown_editor`, then `drush ckeditor5_markdown_editor:install` to download the plugin, then enable "Markdown output" per text format at `admin/config/content/formats`. The `install`/`update` Drush commands download the tarball from `https://registry.npmjs.org` over Guzzle-default (verified) TLS and extract it via core's Tar archiver into a temp dir before mirroring into `/libraries` — CLI-only, admin-run, with the download URL derived from core libraries/config (never request input). The module only changes what the editor *outputs*; to render stored Markdown back to HTML on display you separately need a filter like `markdown_easy` or a formatter like `markdown_field_formatter`. It defines no routes or permissions of its own.

---

- Enable Markdown output on a specific CKEditor 5 text format.
- Run `drush ckeditor5_markdown_editor:install` to fetch the markdown-gfm JS plugin.
- Run `drush ckeditor5_markdown_editor:update` to refresh assets after a CKEditor core upgrade.
- Toggle the "Markdown output" checkbox at `admin/config/content/formats`.
- Produce Markdown-formatted body content from a WYSIWYG editor.
- Check `admin/reports/status` to see whether the plugin files are installed.
- Diagnose a "Missing plugins" status-report warning.
- Diagnose a "Mixed versions" warning (plugin version != CKEditor version).
- Pin the CKEditor version via `ckeditor5_markdown_editor.settings:ckeditor_version`.
- Install the markdown plugin without Composer/npm on the host.
- Pair with `markdown_easy` to render stored Markdown to HTML at display.
- Pair with `markdown_field_formatter` to render a Markdown field.
- Confirm the plugin loads only for editors that actually opted in.
- Author GitHub-flavored Markdown (tables, task lists) in the editor.
- Migrate a text format from HTML output to Markdown output.
- Read logger errors listing which plugins are missing and how to install them.
- Overwrite existing plugin files during a re-install (pass `--yes` to skip the prompt).
- Verify the installed plugin version in `plugins_version_installed` config.
- Rely on the command flushing caches automatically after install.
- Provide a Markdown-first editorial workflow for technical/docs teams.
- Detect the CKEditor version by parsing core's `core.libraries.yml`.
- Uninstall by disabling the module and removing the libraries directory.
