<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Rel Attributes Filter (rel_attributes_filter) — agent index

Text format **filter** adding `rel` attributes (`nofollow`, `noopener`, `noreferrer`) to links.
Core-only dependencies. Core requirement `^8 || ^9 || ^10 || ^11`.

Key facts:
- **Two distinct purposes, both real:**
  - *SEO* — `nofollow` on user-contributed and outbound links stops authority flowing to spam;
  - *Security* — `noopener` on `target="_blank"` links prevents the opened page reaching back
    through `window.opener` and navigating the original tab ("tabnabbing"). Modern browsers imply
    it, older ones do not, and the explicit attribute is still the correct defence.
- **A filter is the right layer, not a CKEditor plugin.** It applies at render time to *all*
  content — pre-existing, migrated, and API-submitted — where an editor plugin only affects what
  is typed after installation.
- **Filter order matters.** It must run at a point where the anchors are present in the markup;
  check its position in the format's filter list if attributes are not appearing.
- Whole module: `src/Plugin/Filter/` + `.module`. Enabled and configured per text format.
