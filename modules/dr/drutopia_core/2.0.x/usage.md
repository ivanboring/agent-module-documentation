<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Drutopia Core is the base feature that provides the shared components (media, cropping, Display Suite, metatag, pathauto, search, paragraphs) required by other Drutopia features.

---

It is the foundational *feature* module of the Drutopia distribution. It carries no controllers or
services — its job is to declare a large dependency set and ship the default configuration that the rest of
the distribution assumes. Dependencies include core `ckeditor5`, `media`, `media_library`, `image`,
`responsive_image`, `taxonomy`, plus contrib `automated_crop`, `crop`, `focal_point`, `image_widget_crop`,
the media-crop adapters, `ds` (Display Suite), `exclude_node_title`, `faqfield`, `metatag`, `paragraphs`,
`pathauto`, `search_api`/`search_api_db` and `video_embed_field`.

The only executable code is `drutopia_core.install`, whose update hooks (`_8101`–`_10201`) progressively
install newly added dependencies (video_embed_field, faqfield, crop+focal_point, then the ckeditor5/media
stack) when a site is updated from an older Drutopia release. There are no routes, permissions or services,
so it adds no independent access surface; it relies on `config_perms` for permission-related config.
Setup is simply enabling it (the Drutopia profile does this first) so downstream features have their
components present.

---

- Bootstrap a Drutopia site with all shared base components.
- Install media + media library + responsive thumbnail support.
- Pull in crop, automated_crop, focal_point and image_widget_crop for image cropping.
- Wire the media contextual-crop focal-point and IWC adapters.
- Provide Display Suite (ds) as a layout/display dependency.
- Ship metatag configuration for SEO metadata.
- Provide pathauto for automatic URL alias generation.
- Enable Search API + search_api_db for site search.
- Add Paragraphs for structured content building.
- Include FAQ Field and Video Embed Field content tooling.
- Provide exclude_node_title behaviour on nodes.
- Depend on config_perms for permission-driven configuration.
- Run update hooks that install newer deps on version upgrade.
- Serve as the required base for drutopia_comment and other features.
- Guarantee ckeditor5 + text-format config is present.
- Act as a single composer/install unit for the distribution core.
- Keep the component baseline consistent across Drutopia sites.
- Support Drupal 10.2, 11 and 12.
