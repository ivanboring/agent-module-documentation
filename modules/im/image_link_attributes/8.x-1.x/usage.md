<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Image Link Attributes extends the image field's link output so the generated anchor can carry `class`, `target` and `rel` attributes.

---

Core's image formatter can link an image to its file or to its content, and produces a bare anchor. That is enough until something needs to hook into it: a lightbox library that binds to a class, a link that must open in a new tab, or an outbound image link that needs `rel="noopener"` — which is not cosmetic, since a `target="_blank"` link without it gives the opened page a handle on yours.

Without this the options are a Twig override or a preprocess function per view mode, both of which put a single attribute in a place nobody will find later. Here it is configuration on the field display, plus a site-level settings form at `image_link_attributes.config`.

Typical use is a gallery: give every linked image a lightbox class and let the JavaScript pick them up, with no template work. It is also the quickest way to make image links consistent across a site, since a lightbox that misses some images because one view mode was templated differently is a familiar bug.

The module ships no PHP classes — it is configuration and hooks — so its surface is small and its upgrade risk correspondingly low.

---

- Add a lightbox class to linked images.
- Open an image link in a new tab.
- Add `rel="noopener"` to outbound image links.
- Bind a gallery script to linked images by class.
- Make image link markup consistent across view modes.
- Add a tracking class to image links.
- Replace a Twig override that added one attribute.
- Configure attributes per field display.
- Set site-wide defaults from a settings form.
- Give image links a `rel="nofollow"` where needed.
- Style linked images differently from unlinked ones.
- Support a lightbox library without custom code.
- Ensure a gallery script finds every linked image.
- Keep attribute logic out of preprocess functions.
- Add a data attribute-driven gallery grouping class.
- Audit image link attributes across view modes.
