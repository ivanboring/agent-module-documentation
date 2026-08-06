<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Image Link Attributes (image_link_attributes) — agent index

Adds `class`, `target` and `rel` to the anchor an image field's link formatter produces.
Configure at `image_link_attributes.config`. Version **8.x-1.11**.
Core `^9.3 || ^10 || ^11`. Depends on `image`, `link`. **No PHP classes** — hooks and config only.

Main use: a lightbox class on linked images so the JS binds without template work; consistency
across view modes so a gallery script does not miss some images.

**Say this about `target="_blank"`:** it needs `rel="noopener"`. Without it the opened page gets a
handle on the opener. That is a correctness point, not a style preference — and this module is how
you set it declaratively.