<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
EPT Image ships an Image paragraph type for the Extra Paragraph Types family — a standalone image component for a stacked page, with the family's shared spacing and background settings.

---

It is the image member of the set whose text and button components were documented in waves 56 and 62: one small module per component, all sharing `ept_core` for the settings they have in common. This one contributes the image section — configuration defining the paragraph type and its media field, a template, and the family's usual `src/Plugin`, `src/Hook` and `src/Services`. Its dependency on core **`media`** is the thing to note operationally, and it is what made this module fail to install on a bare site during this campaign: the shipped configuration references `media.type.image`, a media type that the Standard profile creates but a minimal install does not, so enabling it on a stripped-down site fails with an unmet configuration dependency until that media type exists. Composer requires `ept_core ^2.0` and `paragraphs ^1.0`, and `core_version_requirement` is `^10.1 || ^11 || ^12`, already covering Drupal 12.

---

- Add an image as a page section.
- Build a landing page from stacked components.
- Give editors a standalone image component.
- Share spacing settings with other EPT components.
- Add a full-width image between text sections.
- Select an image from the media library.
- Keep image sections consistent site-wide.
- Theme the image component with a template.
- Add a caption to a page-section image.
- Reuse the component across content types.
- Avoid hand-building a paragraph type.
- Support a component-based editorial workflow.
- Add an image without a developer.
- Standardise image sections across a site.
- Combine with the text and button components.
- Prepare a component for Drupal 12.
- Adopt one EPT component on its own.
- Give a marketing page a hero image.
