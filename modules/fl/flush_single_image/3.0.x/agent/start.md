<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Flush Single Image Styles (flush_single_image) — agent index

Regenerates derivatives for **one image file** rather than flushing a whole image style.
Depends on core `image` and **`action`**. Core requirement `^8.8 || ^9 || ^10 || ^11`.

| Route | Path | Permission |
|---|---|---|
| `flush_single_image.settings.form` | `/admin/config/flush-single-image/settings` | `administer flush_single_image` (`restrict access: true`) |
| `flush_single_image.flush` | `/admin/config/media/image-styles/flush-single` | `administer flush_single_image` |

Plus a separate permission **`flush media image`** for editors to flush an image via the media
bulk action — so replacing an image and refreshing it does not require configuration rights.

Key facts:
- The **`action` dependency** is why it can appear as a bulk operation on media listings. If
  `flush_single_image` is enabled but the bulk action is missing, check `action` is enabled.
- Drush commands in `src/Commands/` — the right path for a deployment step.
- Solves a real asymmetry: core offers "flush this whole image style", which discards every
  derivative for every image using it and forces site-wide regeneration. This targets the file.
- Pairs with `static_asset_cache_buster` (wave 59), which addresses the *browser/CDN* half of the
  same stale-image problem. Flushing the derivative does not evict a copy already cached at the
  edge.
