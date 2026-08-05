<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Varbase Carousels gives a Varbase site a carousel **block type**, so an editor creates a carousel as a piece of block content and places it in any region — no developer, no per-carousel configuration in code.

---

The module is configuration and composition in the Varbase style: `config/install`, `config/optional` and a `config/permissions` directory define the block content type, its fields and the permissions that go with it, with `varbase_carousels.install` doing install-time work. Its dependency list is all core (`block`, `block_content`, `text`, `field`, `user`, `options`, `link`, `filter`), but composer adds `varbase_media ~10.1.0` for the slide media, `ctools ~3 || ~4`, and two Vardot tooling packages — `module-installer-factory`, which drives install-time module enabling across the family, and `entity-definition-update-manager`, which applies entity definition changes on update. `core_version_requirement` is pinned to `~11.4.0`, a single core minor, as the rest of the family is. Compare it with the other carousels documented in this campaign: `varbase_heroslider_media` (wave 56) is the deprecated homepage-specific slider, `ebt_slideshow` (wave 60) is the FlexSlider-based block type from the Extra Block Types family, and `diba_carousel` (wave 55) is the standalone Bootstrap one — this is the general-purpose Varbase-native option.

> Documented from source: `drush en varbase_carousels` on a bare Drupal 11.4 site failed with an
> unmet config dependency on **`ds`** (Display Suite), which the Varbase distribution supplies.

---

- Let editors create a carousel as block content.
- Place a carousel in any region.
- Build a homepage slider without a developer.
- Reuse one carousel on several pages.
- Add slides from the Varbase media library.
- Give a campaign page a rotating banner.
- Manage carousels alongside other block content.
- Standardise carousels across a Varbase site.
- Show partner logos in a carousel.
- Create a testimonial slider.
- Control slide order from the block form.
- Export carousel configuration with the site.
- Add a carousel to a sidebar.
- Support editors on a Varbase build.
- Provide per-carousel permissions.
- Replace a hand-built slider.
- Add a product highlights carousel.
- Keep carousel markup consistent site-wide.
