<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Content Guide (cg) — agent index

**Per-field editorial guidance** rendered from Markdown and shown beside form widgets for editors.

**Version:** 3.0.x (git branch `3.0.x`). Core: `^10.3 || ^11`. Depends on core `filter` + PHP lib `erusev/parsedown`. Submodule: `cg_field_group`.

Enable per widget via third-party settings (`document_path`) on the form display. Routes: `cg.settings` at `/admin/config/content/content_guide` (`administer content guide`, restricted); `cg.data` at `/content-guide/{langcode}` (`use content guide`) — reads the doc, renders with Parsedown, `Xss::filterAdmin`; `cg.autocomplete_md_files` (`administer content guide`). Requires a CSRF token bound to the `X-CG-Identifier` header + `X-CG-Document-Path` header. Event subscribers: Paragraphs, Media, EntityReference. Config `cg.settings` (`document_base_path`).

**Security (report):** `ContentGuideController::loadDocument()` builds the file path by concatenating the request `X-CG-Document-Path` header onto the base path with **no path-traversal check**, then `file_get_contents()` — a `use content guide` holder can read arbitrary server files (partial disclosure via markdown/Xss) — src/Controller/ContentGuideController.php:227-251. Mitigated by the `use content guide` permission + per-identifier CSRF token, but validate/normalize the path. No anonymous access; no TLS-disabled calls.

See [configure/guides.md](configure/guides.md).