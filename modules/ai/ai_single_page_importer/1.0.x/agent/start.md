<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# AI Single Page Importer — agent index

**AI URL importer**: fetch a page, populate article fields. Version **1.0.0-alpha4**. Core `^10||^11||^12`.

Server fetches an editor-supplied URL (SSRF-relevant) — restrict to trusted editors (`use ai single page importer` / admin settings). Sends content to AI provider (cost). Depends on core `node`, `ai`.