<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# EBT: Hero (ebt_hero) — agent index

Hero section **block type** for the **Extra Block Types** family.
Version **2.0.0**. Core `^10.1 || ^11 || ^12`.
Depends on `link`, `media`, `ebt_basic_button`, `paragraphs`.

**Install note, verified:** enabling it on a clean site failed with *"unmet dependencies:
field.field.block_content.ebt_hero.field_ebt_hero_column_image (media.type.image)"* — the field
config references a media type the module does not create. **Create the `image` media type first.**
Same pattern as several EPT components in wave 83; the error names a config object rather than a
missing feature, which is what makes it confusing.

Hero points: it is almost always the page's **largest contentful paint** (responsive config is the
highest-value performance lever; preload it), and **text over a photograph is a structural contrast
problem** — overlay, scrim or constrained text area, because the image is what editors change.