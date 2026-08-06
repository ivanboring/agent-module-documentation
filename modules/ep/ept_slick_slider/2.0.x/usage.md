<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
EPT Slick Slider adds a slider paragraph type to the Extra Paragraph Types family, built on Slick.

---

Slick is the long-established jQuery carousel, and this places it as an EPT component so an editor can add a slider to a page alongside the family's other paragraph types, with per-instance settings through the shared `ept_settings` widget.

**Its widget does not override the parent constructor**, which is worth noting because that is precisely what breaks its siblings. `ept_cta` (wave 83) and `ept_video_and_image_gallery` (wave 86) both override `EptSettingsDefaultWidget::__construct()` with the old five-argument signature and fail with an `ArgumentCountError` against `ept_core` 2.0.0. `EptSettingsSlickSliderWidget` extends the base and adds no constructor, so it inherits correctly — the same reason `ept_timeline` and `ept_basic_button` work.

That is the family rule stated positively: **a component that does not override the constructor is safe; one that does needs checking.**

On the slider itself, the standard carousel points apply and are worth repeating because they decide whether the component should be used at all. Content past the first slide is rarely seen, so it suits equally-optional items rather than anything important. Accessibility needs keyboard-operable controls with visible focus, every slide's content reachable, and a pause control if it auto-advances. And Slick is a **jQuery** plugin, so this brings jQuery onto any page carrying the component — relevant on a site that has otherwise moved off it.

---

- Add a slider to a landing page.
- Place a carousel as a paragraph.
- Configure slider settings per instance.
- Use Slick's established behaviour.
- Show equally optional items in rotation.
- Avoid putting important content past slide one.
- Check keyboard operation of the slider.
- Provide a pause control for auto-advance.
- Make every slide's content reachable.
- Account for the jQuery dependency.
- Recognise the safe EPT constructor pattern.
- Contrast with ept_cta's broken widget.
- Pin EPT family versions together.
- Audit carousels for accessibility.
- Decide whether a slider suits the content.
