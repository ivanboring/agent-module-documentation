<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Entity Relationship Diagrams (erd) — agent index

Interactive diagram of the site's entity types and their references, built live from entity
definitions. Core requirement `^9.4 || ^10 || ^11`.
All routes gated by **`administer erd`**: `/admin/structure/erd`, `.../erd/settings`,
`.../erd/ajax` (layout persistence).

Key facts:
- **Four jQuery UI dependencies** — `jquery_ui`, `jquery_ui_menu`, `jquery_ui_autocomplete`,
  `jquery_ui_resizable`. These are contributed modules carrying components Drupal removed from
  core after Drupal 9, and jQuery UI is in long-term maintenance. Same consideration as `lb_tabs`
  (wave 63).
- The diagram is generated from **live entity definitions**, so it cannot drift from the site —
  the main advantage over a hand-drawn diagram.
- The AJAX route persists layout, so an arrangement survives a reload.
- **Complements rather than duplicates `content_model_documentation` (wave 62):** that one
  documents *why* the model is as it is and exports Mermaid diagrams and CSV for people outside
  the site; this is the interactive in-site view for someone exploring.
