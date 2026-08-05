<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Cocoen Before After (cocoen_beforeafter) — agent index

**Field formatter** rendering two images as a draggable before/after comparison, via the **Cocoen**
library. Works on image and media image fields. Depends on core `image`. Version **8.x-1.3**.
Core requirement `^10 || ^11`.

**Why a formatter rather than a component:** the two images stay ordinary field values that can be
replaced independently, and the presentation is a display setting rather than something an editor
assembles.

**Two things to get right:**
1. **The two images must share dimensions and alignment**, or the comparison is misleading rather
   than informative — a divider between a wide shot and a close-up shows nothing about change. The
   module cannot enforce this; it belongs in **editorial guidance**.
2. **A drag interaction needs a keyboard equivalent.** A comparison operable only by dragging is
   unavailable to keyboard and screen-reader users. Check whether the slider responds to **arrow
   keys**; if not, ensure both images remain individually reachable with alternative text that
   describes **what changed**.

Genuinely right for: restoration, construction over time, medical/cosmetic results, satellite
change detection, design refreshes, before/after processing.
