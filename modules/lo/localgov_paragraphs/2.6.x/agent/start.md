<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# LocalGov Paragraphs (localgov_paragraphs) — agent index

The shared paragraph component library for LocalGov Drupal. Config-provider module: no routes,
no permissions, no config schema, no Drush. Dependencies are core field modules only
(`field`, `link`, `options`, `taxonomy`, **`telephone`**, `text`).

> On Drupal **11.4+** the `telephone` dependency resolves to the **contrib** Telephone module —
> core removed it. See `modules/te/telephone/1.0.x` in this repo.

Key facts:
- Paragraph types in `config/install`: `localgov_text`, `localgov_image`, `localgov_link`,
  `localgov_contact`, `localgov_numbered_text` (`paragraphs.paragraphs_type.*`). They are ordinary
  bundles — add fields with Field UI as needed.
- Submodules:

  | Submodule | Purpose |
  |---|---|
  | `localgov_paragraphs_layout` | Layout-paragraphs support for multi-column sections |
  | `localgov_paragraphs_views` | Embed a view as a component |
  | `localgov_homepage_paragraphs` | Components for a council homepage |
  | `localgov_subsites_paragraphs` | Richer component set for subsites — required by `localgov_directories_promo_page` |

- Documented from source in this wave: on a bare Drupal 11.4 site `drush en localgov_paragraphs`
  reported FAILED because the submodules pull further LocalGov dependencies
  (`localgov_core` and the paragraphs stack). Install it as part of the LocalGov distribution, or
  enable its dependencies first.
