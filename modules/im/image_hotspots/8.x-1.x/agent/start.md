<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Image Hotspots (image_hotspots) — agent index

Editors mark regions of an image with labelled points. Create/update/delete routes
(`/image-hotspots/…`) behind **`edit image hotspots`** — designed to be used **while viewing the
image**, not on the node form. Depends on core `image`. Version **8.x-1.0-beta5** — **beta**.
Core requirement `^10.1 || ^11`.

**Why overlaid markup beats labelling the image itself:** text baked into a raster is
untranslatable, unsearchable, unreadable to a screen reader, and wrong the moment a label changes.

**Two things follow from the "annotate while viewing" design — check both:**
1. **The routes are state-changing controller endpoints.** Confirm they are **POST-only or carry
   `_csrf_token`** — a GET route that deletes a hotspot behind a flat permission is triggerable from
   an external page.
2. **The permission is per-site, not per-image.** `edit image hotspots` does not say *which* images —
   anyone holding it can annotate any image the site displays. Weigh that where images belong to
   different teams.

**Separately and importantly: an annotated image is an accessibility question.** Points positioned
over a picture are meaningless without a **keyboard path** and a **text alternative conveying the
same information in order**.
