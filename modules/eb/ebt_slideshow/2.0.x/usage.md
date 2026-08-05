<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
EBT Slideshow ships a ready-made Slideshow block type built on FlexSlider — the slider component of the Extra Block Types family, which builds page components as **block types** rather than paragraph types.

---

Extra Block Types is the block-oriented sibling of Extra Paragraph Types (whose text component was documented in wave 56): the same one-module-per-component design and a shared `ebt_core` for common settings, but producing block content types that can be placed in regions and in Layout Builder, rather than paragraphs embedded in a field. This module contributes the slideshow. It is configuration plus templates — `config/install` defines the block type and its fields, and four Twig templates cover the different contexts the component renders in (block content, inline block, the slideshow field itself, and a paragraph variant, which is why `paragraphs` remains a dependency). The slider itself is `levmyshkin/flexslider ^2.7`, a maintained fork of the original FlexSlider, installed as a composer library, with `css/flexslider` holding the styles. Dependencies are core `media` and `media_library` alongside `ebt_core ^2.0`, and `core_version_requirement` is `^10.1 || ^11 || ^12`, already declaring Drupal 12.

---

- Add an image slideshow as a placeable block.
- Put a carousel in a Layout Builder section.
- Give editors a slideshow without a content type.
- Pick slides from the media library.
- Reuse one slideshow block across pages.
- Build a homepage hero from a block.
- Share styling settings with other EBT components.
- Add a testimonial carousel.
- Show a product image slider.
- Theme the slideshow with a Twig override.
- Place a slideshow in a sidebar region.
- Use FlexSlider without wiring it up manually.
- Add a slideshow to a landing page.
- Keep slider markup consistent site-wide.
- Show a partner logo carousel.
- Export a configured slideshow with site config.
- Prepare a slider component for Drupal 12.
- Adopt one EBT component without the whole set.
