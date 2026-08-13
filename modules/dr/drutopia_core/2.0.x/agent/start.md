<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Drutopia Core (drutopia_core) — agent index

**The Drutopia base feature: declares the distribution's shared component dependencies and ships their default config.**

- **Version:** 2.0.x
- **Core:** ^10.2 || ^11 || ^12
- **Package:** Drutopia
- **Key deps:** ckeditor5, media, media_library, image, responsive_image, taxonomy, crop, automated_crop, focal_point, image_widget_crop, ds, metatag, pathauto, paragraphs, search_api(+_db), faqfield, video_embed_field, config_perms, exclude_node_title.
- **Code:** only `drutopia_core.install` — update hooks `_8101`–`_10201` install newly-added dependencies on upgrade.
- **Routes / services / permissions:** none of its own.

**Security:** no routes, services or custom access surface — a dependency/config bundle; access posture is core's.
