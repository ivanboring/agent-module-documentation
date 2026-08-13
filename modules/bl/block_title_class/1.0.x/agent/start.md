<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Block Title Class (block_title_class) — agent index

**Adds a per-block select (h1-h6) that attaches a class to the block title via third-party settings.**

- **Version:** 1.0.x
- **Core:** ^9 || ^10 || ^11
- **Requires:** block
- **Mechanism:** `hook_form_block_form_alter` adds the select; stored in block third-party settings `block_title_class.title_class` (schema `block.block.*.third_party.block_title_class`); `hook_preprocess_block` appends the class to `title_attributes`.
- **Theme requirement:** title element must print `{{ title_attributes }}`.
- **Routes/permissions/services:** none custom.

**Security:** No endpoints; the setting is edited on the core block config form (block-administration permission) and stored as config. The class is one of a fixed allowlist (h1-h6/_none), so no arbitrary attribute injection. No security findings.
