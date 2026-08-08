<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Canvas Translate — agent index

**Translation of Drupal Canvas content** as a Canvas page extension (in-place). Integrates
`content_translation`, `language`; optional **AI** via `canvas_translate_ai`. Depends on `canvas`
(>=1.8). Provides permissions. Version **1.0.0-alpha4**. Core `^11.3`.

If AI submodule used: content sent to the AI provider (store credentials as secrets; data leaves the
site). Respects content-translation access.
