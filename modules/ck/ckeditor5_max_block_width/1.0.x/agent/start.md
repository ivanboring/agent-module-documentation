<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# CKEditor 5 max block width (ckeditor5_max_block_width) — agent index

**CKEditor 5 toolbar dropdown** to set a block's width (regular/wide/full) by applying a class to tables, images and media.

**Version:** 1.0.x (1.0.0-alpha2). Core: `^10 || ^11`.

CKEditor5 plugin declared in `ckeditor5_max_block_width.ckeditor5.yml`: JS plugin `maxWidth.MaxWidth`, toolbar item `maxWidth` (label "Block width"), libraries `ckeditor5_max_block_width/ckeditor5_max_block_width` + `admin`, allowed elements `<table class>`, `<img class>`, `<drupal-media class>`. `hook_page_attachments` attaches `ckeditor5_max_block_width/styles` front-end CSS. No routes, permissions, services or config forms.

**Security:** editor-experience plugin, no endpoints; width classes ride within the text format's allowed-HTML sandbox. No security findings.