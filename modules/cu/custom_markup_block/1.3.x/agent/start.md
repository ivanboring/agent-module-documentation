<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Custom Markup Block (custom_markup_block) — agent index

Block whose markup is stored in **configuration**. Depends on core `filter`.
Core requirement `^8 || ^9 || ^10 || ^11`.

Key facts:
- **Filtering is done correctly** — worth recording as a positive:
  - the form uses `'#type' => 'text_format'`, so the format list is restricted to formats the
    editing user may actually use;
  - output is `'#type' => 'processed_text'` with that `#format`, i.e. through the normal filter
    pipeline, **not** raw markup.
  Default format is `full_html`, which core only offers to users who hold it.
- Whole module is `src/Plugin/Block/` + `config/schema`. No routes, no permissions of its own —
  gated by core's `administer blocks`.
- **Config-stored content trade-off:** a `drush cim` overwrites anything edited through the UI on
  that environment. Use it for markup the codebase owns (embed wrappers, legal notices,
  structural fragments), not for anything an editor should control.
- Compare `text_block` (wave 58), which does the same for plain text. Same deployment reasoning,
  different content type.
