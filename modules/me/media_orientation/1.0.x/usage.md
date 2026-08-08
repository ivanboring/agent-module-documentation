<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Media Orientation determines whether a media item is portrait, landscape or square and makes that orientation available to work with — notably as a Views filter, through its dependency on Views Filter Select.

---

Layouts often need to treat tall and wide images differently: a masonry grid, a hero that only suits landscape, a portrait-only staff photo list. The information needed to do that — the aspect ratio's orientation — is implicit in every image but not exposed anywhere convenient to filter or theme on. This module surfaces it.

Once the orientation is available, the obvious use is a Views filter: "show only landscape media", "group portraits separately". That is why it depends on **Views Filter Select**, which turns the orientation into an exposed select filter rather than a free-text field. The pairing is the point — orientation as data plus a clean way to filter on it.

It is a small, focused module. What it does on a given site depends on how the orientation is wired into displays and views; on its own it provides the classification and the filtering hook, not a finished gallery. Treat it as a building block for orientation-aware media listings.

---

- Filter media by orientation.
- Show only landscape images.
- Show only portrait images.
- Separate portraits from landscapes in a view.
- Build an orientation-aware gallery.
- Classify a media item's aspect.
- Expose orientation as a Views filter.
- Drive a masonry layout by orientation.
- Select a hero image by landscape only.
- List staff portraits.
- Group media by shape.
- Use Views Filter Select for the exposed filter.
- Theme differently by orientation.
- Detect square media.
- Add orientation to a media view.
- Support responsive image galleries.
- Filter a media library by shape.
- Build a portrait-only listing.
- Combine orientation with other filters.
- Treat orientation as filterable data.