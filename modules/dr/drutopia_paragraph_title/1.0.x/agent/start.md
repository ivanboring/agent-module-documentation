<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Title Paragraph (drutopia_paragraph_title) — agent index

**A `title` paragraph type that replaces the page title with a title, subtitle and image, rendered via UI Patterns.**

- **Version:** 1.0.x · **Core:** ^10.2 || ^11 || ^12 · **Package:** Drutopia
- **Contents:** paragraph config + theme hooks `paragraph__title`, `field__field_title`, `field__field_subtitle`, `field__field_style_color` (`drutopia_paragraph_title.module`) and SCSS/CSS.
- **Depends on:** paragraphs, entity_reference_revisions, allowed_formats, drutopia_core, ui_patterns (+ ds/library/layouts), field/image/text.
- **Security:** display/config + Twig only; no routes, permissions, controllers, or services. No findings.
