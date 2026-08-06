<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
EBT Hero adds a hero section block type to the Extra Block Types family.

---

The full-width introduction at the top of a page: background media, heading, supporting text and a button, placed as a block rather than a paragraph — which is the distinction between the EBT and EPT families, and the reason both exist.

**Enabling it required a media image type to exist first.** On a clean install it failed with *"unmet dependencies: field.field.block_content.ebt_hero.field_ebt_hero_column_image (media.type.image)"* — the block type's field configuration references a media type the module does not create. That is the same pattern as several EPT components in wave 83, and it is worth stating because the error names a config object rather than a missing feature: create the `image` media type first, or install a distribution that ships one.

On the hero itself, the two points that matter for any hero apply here. It is almost always the page's **largest contentful paint**, so its responsive image configuration is the highest-value performance lever on a landing page, and preloading that image is usually worth doing. And **text over a photograph is a contrast problem** the design has to solve structurally — an overlay, a scrim or a constrained text area — because the image is the thing editors change and legibility over one photograph says nothing about the next.

---

- Add a hero section to a page.
- Place a hero as a block.
- Show a heading over background media.
- Put a call to action in the hero.
- Create the image media type first.
- Diagnose an unmet config dependency.
- Serve a responsive hero image.
- Preload the hero image.
- Improve largest contentful paint.
- Keep hero text legible over any image.
- Apply an overlay or scrim.
- Test contrast with several photographs.
- Choose between the EBT and EPT families.
- Reuse a hero across landing pages.
- Audit hero image sizes.
