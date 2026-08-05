<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Image Hotspots lets editors mark regions of an image with labelled points, creating an annotated image the visitor can explore.

---

The pattern answers a specific need that a caption cannot: an image where the information is *where* something is. A product photograph labelling its features, a floor plan marking rooms, a diagram identifying parts, a team photograph naming people, a map of a site with points of interest, an anatomical illustration. Doing it in the image itself bakes the text into a raster — untranslatable, unsearchable, unreadable to a screen reader and wrong the moment a label changes. Doing it as overlaid markup keeps the text as text. Version **8.x-1.0-beta5** — a **beta** — on core `^10.1 || ^11`, depending on core `image`, with hotspot creation, update and delete on their own routes behind an `edit image hotspots` permission, which is designed to be used **while viewing the image** rather than on the node form. Two things follow from that design and are worth checking. **The routes are state-changing controller endpoints**, so confirm they are POST-only or carry `_csrf_token`, since a GET route that deletes a hotspot behind a flat permission is triggerable from an external page. And **the permission is per-site rather than per-image** — `edit image hotspots` does not say *which* images, so anyone holding it can annotate any image the site displays, which needs weighing on a site where images belong to different teams. Separately, and importantly: **an annotated image is an accessibility question**, because points positioned over a picture are meaningless without a keyboard path and a text alternative that conveys the same information in order.

---

- Label features on a product photograph.
- Mark rooms on a floor plan.
- Identify parts in a diagram.
- Name people in a team photograph.
- Mark points of interest on a map.
- Annotate an anatomical illustration.
- Add explanatory labels to an image.
- Build an interactive infographic.
- Label equipment in a workshop photo.
- Annotate a screenshot for documentation.
- Mark locations on a campus image.
- Keep labels translatable.
- Add clickable regions to an image.
- Explain a technical drawing.
- Label ingredients in a photograph.
- Annotate a historical image.
- Mark defects on an inspection photo.
- Build a guided image tour.
