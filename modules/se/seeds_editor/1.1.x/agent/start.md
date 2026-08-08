<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Seeds Editor (seeds_editor) — agent index

Editor layer of the **Seeds distribution** — a pre-assembled CKEditor 5 + text-format configuration.
Version **1.1.14**. Core `^10 || ^11`. Configure at `/admin/config/content/seeds-editor`
(`administer seeds editor`).

**Seventeen dependencies** — this is the defining fact. Core: `ckeditor5`, `editor`, `filter`,
`image`, `media`, `media_library`. Contrib: `ace_editor`, `allowed_formats`, `smart_trim`, `blazy`,
`editor_advanced_link`, `entity_embed`, `linkit`, `ckeditor_bidi`, `ckeditor5_plugin_pack`,
`media_embeddable`, `ckeditor_responsive_table`, `ckeditor_media_resize`.

**Fit:** good on a Seeds site or a greenfield build wanting a known-good editor. On an existing
site it is a large opinionated footprint that must be reconciled with existing text formats — and
17 dependencies is 17 upgrade paths.

**RTL support** via `ckeditor_bidi` is the piece hardest to retrofit; note it for Arabic/Hebrew/
Persian content.