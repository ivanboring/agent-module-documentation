<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Image Style Preview shows what a site's image styles actually produce, in one place.

---

Drupal's image style administration lists styles by name and describes their effects in words. What it does not do is show you the result, so answering "which of these seventeen styles is the one used for card thumbnails" means opening each one and reading a chain of effect descriptions.

This module renders previews, which turns that into looking.

The value is highest exactly where the problem is worst: a site that has accumulated styles over years, where names like `medium_2`, `thumbnail_new` and `card_v3` no longer mean anything and nobody dares delete one. Seeing them side by side is how that gets untangled.

Its route is gated by `access administration pages`, which is a broad permission — anyone who can reach the admin area can view the previews. That is reasonable for what it shows (the site's own image styles applied to a sample), and worth knowing rather than assuming it is admin-only.

Practical note: generating previews creates derivatives, so the first load of the page does the image processing for every style. On a site with many styles that page is slow once and fast afterwards.

---

- See what an image style produces.
- Compare image styles side by side.
- Identify which style a display uses.
- Untangle accumulated image styles.
- Decide which styles can be deleted.
- Check an effect chain visually.
- Avoid reading effect descriptions.
- Verify a new style before applying it.
- Audit a site's image styles.
- Explain styles to a designer.
- Check derivative dimensions.
- Know that previews generate derivatives.
- Expect a slow first page load.
- Review styles after a theme change.
- Document which styles a project uses.
- Plan an image style cleanup.
