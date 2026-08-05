<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Representative Image defines, per content type, which image best represents a node — and exposes it as a **token**, so social sharing tags and other consumers have one thing to ask for.

---

The need appears whenever something outside the node has to pick one image: an `og:image` meta tag, a listing thumbnail, an email digest. A node may have a hero image, an inline body image, a media reference and a default fallback, and every consumer ends up implementing its own guess at which to use — with different answers, so a page shares one image on Facebook and shows another in a listing. This module makes the choice once per content type, with a fallback order, and publishes the result as a token. That token is the whole point: Metatag patterns, Pathauto, mail templates and Views rewrites all consume tokens, so the decision made here propagates everywhere without each consumer knowing the field structure. The module depends only on core and targets `^10.3 || ^11`; the release carries the legacy `8.x-1.5` string. Worth pairing with the alt-text modules documented elsewhere in this campaign — a representative image with no alt text is still an accessibility problem, and `imagefield_default_alt_and_title` (wave 66) or `auto_alter` (wave 64) address that half.

---

- Choose one image to represent a node.
- Set og:image consistently for sharing.
- Provide a token for a listing thumbnail.
- Fall back through several image fields.
- Keep social preview images consistent.
- Configure the choice per content type.
- Use the image in a Metatag pattern.
- Provide an image for an email digest.
- Avoid each consumer guessing.
- Handle nodes with several image fields.
- Provide a site-wide default image.
- Feed a Views rewrite with an image.
- Improve social sharing appearance.
- Use the token in a mail template.
- Handle media references and image fields alike.
- Give an RSS feed an image.
- Standardise thumbnails across content types.
- Reduce bespoke image-selection code.
