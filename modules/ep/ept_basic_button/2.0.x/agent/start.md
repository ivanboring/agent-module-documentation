<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Extra Paragraph Types (EPT): Basic Button (ept_basic_button) — agent index

Basic Button paragraph type for the **Extra Paragraph Types** family. Depends on `ept_core ^2.0`,
`paragraphs ^1.0` and core `link`. Core requirement `^10.1 || ^11 || ^12` (declares Drupal 12).

Key facts:
- Mostly configuration + presentation: `config/install` (paragraph type + link field),
  `templates/paragraph--ept-basic-button--default.html.twig`,
  `css/ept_basic_button_view.css`, plus `src/Plugin/`, `src/Hook/`, `src/Services/`.
- Common settings (background, spacing, container width) come from `ept_core`, shared across the
  family — same trade-off as `ept_text` (wave 56): many small modules, one shared core.
- **Distinguish from `button_formatter` (wave 58):** that renders an *existing* link field as a
  button via display settings — right when the link is a property of the content. This creates a
  standalone button *section* in a stacked page — right when the button is a component of the
  page.
- Contrast also with the **EBT** family (`ebt_slideshow`, wave 60), which builds the same kinds of
  component as **block types** rather than paragraph types.
