<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Image Style Preview (imagestyles) — agent index

Renders **previews of every image style** in one place.
Route `admin/config/media/image-styles/imagestyles`, `_permission: 'access administration pages'`.
Version **8.x-1.4**. Core `^8.8 || ^9 || ^10 || ^11`.

Turns "which of these seventeen styles is the card thumbnail" from reading effect chains into
looking. Highest value on a site that has accumulated `medium_2`, `thumbnail_new`, `card_v3` over
years.

**Two notes:** the permission is `access administration pages` — broad, not admin-only, though what
it shows is only the site's own styles on a sample; and generating previews **creates
derivatives**, so the first load does image processing for every style.