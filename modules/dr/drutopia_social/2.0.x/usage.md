<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Drutopia Social is a tiny base feature that wires up a social media links block for the Drutopia distribution.
---
The module contains no PHP code and (in this checkout) no exported config beyond its features manifest; its sole job is to declare a dependency on core `block` and the contrib `social_media_links` module so a Drutopia site gets a ready-to-place "social media links" block. All actual behaviour — which networks appear, their icons, and ordering — is configured in the `social_media_links` block instance once placed.

Because it ships no routes, services, or permissions, there is nothing to secure in the module itself. Setup is: enable the module, then place and configure the Social Media Links block through the normal Block Layout UI.
---
- Add a social media links block to a Drutopia site.
- Ensure the social_media_links dependency is present on install.
- Place the social block in a footer or header region.
- Configure which networks (Facebook, X, Instagram, etc.) appear.
- Set icon style/size for social links via social_media_links.
- Reorder social platforms shown in the block.
- Keep social-link config consistent across Drutopia sites.
- Use as an optional add-on feature alongside drutopia_site.
- Theme the social block with the active theme's block templates.
- Restrict block visibility by path/role via core block conditions.
- Remove the block by disabling the module.
- Bootstrap social presence for a new community site.
- Add multiple social blocks in different regions.
- Update social URLs centrally in the block config.
- Pair social icons with a matching icon library/font.
- Audit which social platforms a site links out to.
