<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Custom Markup Block provides a block whose markup is stored in **configuration**, so a snippet of HTML deploys with `drush cim` instead of being recreated as block content on every environment.

---

The need is the same one `text_block` addressed in wave 58 — a block whose content developers own rather than editors — and the difference is what goes in it: this one is explicitly for markup, edited through a `text_format` element so the author picks a text format, and rendered through `#type: 'processed_text'` with that format applied. That detail matters, because it is the correct pattern: the format list a user sees is restricted to formats they may use, and output goes through the filter pipeline rather than being emitted raw. The default format is `full_html`, which is only offered to users who hold it. Everything lives in `src/Plugin/Block` with `config/schema`, core `filter` is the only dependency, and the range is a wide `^8 || ^9 || ^10 || ^11`. The trade-off is the familiar one for config-stored content: a config import overwrites whatever was edited on that environment, so this is for markup that belongs to the codebase — a tracking snippet wrapper, a legal notice, a structural fragment — not for anything an editor should own.

---

- Ship a markup snippet as configuration.
- Deploy block HTML through config import.
- Version-control a legal notice.
- Keep a markup block identical across environments.
- Review markup changes in a merge request.
- Avoid recreating custom blocks after a database refresh.
- Place a structural HTML fragment in a region.
- Roll back markup with a config revert.
- Keep developer-owned markup out of content.
- Add a wrapper for a third-party embed.
- Provide a fixed disclaimer block.
- Ship markup with an install profile.
- Export block markup with site config.
- Keep markup under a chosen text format.
- Distribute the same block across a multisite.
- Prevent editors changing a controlled snippet.
- Add markup without a custom module.
- Audit where a snippet is used.
