<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# EPT: Slick Slider (ept_slick_slider) — agent index

Slider paragraph type for the **Extra Paragraph Types** family, built on **Slick**.
Version **2.0.1**. Core `^10.1 || ^11 || ^12`. Depends on `ept_core`, `paragraphs`.

**Cite it as the safe side of the EPT family rule.** `EptSettingsSlickSliderWidget` extends
`EptSettingsDefaultWidget` and **adds no constructor**, so it inherits the current 7-argument
signature and works — unlike `ept_cta` (wave 83) and `ept_video_and_image_gallery` (wave 86), which
override it with the stale 5-argument call and fail with an `ArgumentCountError`.

**Rule, stated positively: a component that does not override the constructor is safe; one that
does needs checking.**

Carousel points apply: content past slide one is rarely seen (suits equally-optional items);
keyboard-operable controls with visible focus, all slide content reachable, pause control if
auto-advancing. **Slick is jQuery**, so this puts jQuery on any page carrying it.