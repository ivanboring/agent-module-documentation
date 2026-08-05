<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Cocoen Before After Image Formatter renders two images as a draggable before/after comparison, using the Cocoen library.

---

The pattern has a narrow set of uses and is genuinely the right presentation for all of them: a restoration project, a construction site at two dates, a medical or cosmetic result, a satellite image showing change, a design refresh, a photograph before and after processing. Two images side by side make the viewer compare by memory; one image with a draggable divider makes them compare directly, and the difference in how much is noticed is large. This module supplies it as a **field formatter** on image and media image fields, so it is a display setting rather than a component an editor has to assemble, which keeps the two images as ordinary field values that can be replaced independently. Version **8.x-1.3** on core `^10 || ^11`, depending on core `image`. Two things to get right. **The two images must be the same dimensions and alignment** or the comparison is misleading rather than informative — a divider between a wide shot and a close-up shows nothing about change, and this is a content-production requirement the module cannot enforce, so it belongs in the editorial guidance. And **a drag interaction needs a keyboard equivalent**: a comparison that can only be operated by dragging is unavailable to keyboard and screen-reader users, so check whether the slider responds to arrow keys and, if it does not, ensure both images remain individually reachable with meaningful alternative text describing what changed.

---

- Show a restoration before and after.
- Compare a construction site over time.
- Show a design refresh.
- Compare a photograph before processing.
- Show satellite imagery change.
- Present a renovation result.
- Compare a product's condition.
- Show a cleaning or repair result.
- Present a medical outcome image.
- Compare two versions of a map.
- Show a landscape across seasons.
- Present a redesign comparison.
- Compare a garden's growth.
- Show a conservation project's result.
- Compare a room before and after.
- Present a colour-grading example.
- Show a repair's outcome.
- Compare two site layouts.
