<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Simple Interactive Maps embeds an SVG map whose regions respond to interaction — hover, click, link.

---

Not every map needs coordinates. A map of electoral regions, a floor plan, a schematic of a network, a country divided into sales territories — these are diagrams with named areas, and pushing them through a mapping library that expects latitude and longitude is more work for a worse result. An SVG with identified paths is the natural representation, and making those paths interactive is what turns the diagram into navigation.

That is what this module does: upload the SVG, associate its regions with content or links, and the map becomes clickable.

**SVG deserves its usual caution.** An SVG is an XML document that can contain scripts and external references, so the upload path matters: who may upload one, and whether it is sanitised. On a site where map uploads are an administrator task (`administer interactive_map`, which this module defines) that is a small surface; if the capability is delegated more widely, an SVG upload is effectively an HTML upload.

**And an interactive map is only accessible if the interaction is.** Regions that respond to hover and click need keyboard equivalents and accessible names, and a map used for navigation needs a non-map alternative — a list of the same links — for anyone who cannot use it. That is a content requirement rather than a module setting, and it is the part most often skipped.

---

- Embed a clickable regional map.
- Make a floor plan interactive.
- Link map regions to content.
- Show sales territories as a diagram.
- Avoid a coordinate-based mapping library.
- Use an SVG with identified paths.
- Restrict who may upload map SVGs.
- Sanitise uploaded SVG content.
- Provide keyboard equivalents for regions.
- Give regions accessible names.
- Offer a list alternative to the map.
- Style regions with CSS.
- Highlight a region on hover.
- Audit SVG uploads on a site.
- Plan an accessible interactive diagram.
