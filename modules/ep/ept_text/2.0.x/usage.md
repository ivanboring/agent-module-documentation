<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
EPT Text is the simplest member of the Extra Paragraph Types family: it ships one ready-made Paragraph type — a rich-text block with a WYSIWYG editor — so a landing-page builder has a text component without anyone hand-building the bundle.

---

The Extra Paragraph Types project splits page-building components into one small module per component, all sharing `ept_core` for the settings and styling options they have in common (background, spacing, container width and similar). `ept_text` contributes the text component. It is configuration, not code: `config/install` defines the Paragraph type and its field and display setup, and `templates/paragraph--ept-text--default.html.twig` renders it. There is no `src/` directory, no route and no permission — access is governed by Paragraphs and by whichever entity the paragraph is attached to. Its `core_version_requirement` of `^10.1 || ^11 || ^12` is unusually forward-looking, already declaring Drupal 12 compatibility. The trade-off of the one-module-per-component design is module count: a site using ten EPT components installs ten modules, each tiny, all depending on `ept_core`.

---

- Add a rich-text block to a Paragraphs-based landing page.
- Give editors a WYSIWYG component without building a bundle.
- Share background and spacing options across page components.
- Start a page-builder library with a text component.
- Keep text sections consistent across a site.
- Override text component markup with the supplied template.
- Combine text blocks with other EPT components.
- Avoid hand-configuring a paragraph type per project.
- Provide a component-based alternative to Layout Builder.
- Reuse the same text component across several sites.
- Let editors control spacing without touching CSS.
- Build a marketing page from stacked components.
- Standardise rich-text editing inside paragraphs.
- Adopt one EPT component without the whole set.
- Migrate ad-hoc text paragraph types onto a maintained one.
- Ship a text component that already declares Drupal 12 support.
- Give a design system a canonical text block.
- Reduce bespoke configuration in a multi-site build.
