<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# EPT: Counter (ept_counter) — agent index

Number-counter and text **paragraph type**. Version **2.0.0**. Core `^10.1 || ^11 || ^12`.
Depends on `ept_core`, `paragraphs`.

**Safe side of the EPT family rule:** its widget **does not override** the parent constructor, so it
inherits `ept_core` 2.0.0's current 7-argument signature — like `ept_slick_slider`, `ept_timeline`
and `ept_basic_button`, and unlike `ept_cta` (wave 83) and `ept_video_and_image_gallery` (wave 86),
which override with the stale 5-argument call and fail.

**Two editorial points:** a figure without a **source and date** is an assertion, and headline
statistics are exactly what a sceptical reader checks — if the component has no field for it, the
page needs one; and an animated counter is **motion**, so respect `prefers-reduced-motion` and make
sure the **final value is present** without JS. Animating from zero and showing zero is a failure
that looks like a design choice.