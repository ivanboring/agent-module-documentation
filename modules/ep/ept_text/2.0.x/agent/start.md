<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Extra Paragraph Types (EPT): Text (ept_text) — agent index

One ready-made Paragraph type: a rich-text block with a WYSIWYG editor. Part of the **Extra
Paragraph Types** family. Dependencies: `ept_core`, `paragraphs`.
Core requirement `^10.1 || ^11 || ^12` — it already declares Drupal 12 compatibility.

Key facts:
- **Pure configuration.** No `src/`, no routes, no permissions, no services. The module is
  `config/install` (paragraph type + field/display config) plus
  `templates/paragraph--ept-text--default.html.twig`.
- Access control comes entirely from Paragraphs and the host entity — this module adds none.
- The family design is *one module per component*, all sharing `ept_core` for the common
  settings (background, spacing, container width). Expect module count to grow with the number
  of components a site uses; each is this small.
- To restyle it, override `paragraph--ept-text--default.html.twig` in the theme rather than
  editing the module.
