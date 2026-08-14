<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Title Paragraph provides a reusable "title" paragraph type so editors can replace a page's default title with a richer title, subtitle and image block.

---

It is a Drutopia feature module carrying config for a `title` paragraph (title, subtitle, an optional style/colour, and an image), themed via dedicated templates (`paragraph--title`, `field--field-title`, `field--field-subtitle`, `field--field-style-color`) and integrated with UI Patterns / UI Patterns DS for component-based rendering. It uses `allowed_formats` to constrain the title/subtitle text formats and `entity_reference_revisions`/`paragraphs` for the paragraph storage. Editors add the paragraph to a content type's paragraph field to produce a styled hero-style title area with an accompanying subtitle and image.

The module ships display/config and Twig templates only — no routes, permissions, controllers or services. Setup: enable it, add the title paragraph to the relevant paragraph field, and place/style it on the content type's display.

---
- Replace a plain node title with a styled title + subtitle.
- Add a hero-style title block with an image.
- Give pages an editable subtitle beneath the main title.
- Apply a style/colour choice to the title area.
- Render the title paragraph via UI Patterns components.
- Constrain title/subtitle text formats with allowed_formats.
- Theme the title paragraph with dedicated templates.
- Reuse the paragraph across multiple content types.
- Build consistent page headers across a Drutopia site.
- Add an image to the title/hero region.
- Override the title field template for custom markup.
- Override the subtitle field template.
- Style the color field independently.
- Combine with other paragraphs in a page body.
- Keep the title paragraph as exportable config.
- Provide editors a structured alternative to raw HTML titles.
- Support decorative page-header layouts.
- Integrate with UI Patterns DS layouts.
