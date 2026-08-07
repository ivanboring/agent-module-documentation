<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
EPT Counter adds a paragraph type showing an animated number with accompanying text — the headline-figure component.

---

Three or four large numbers with short labels: members served, years operating, projects delivered. It works because a number is the fastest claim to read and the easiest to remember, which is also why it deserves more care than it usually gets.

**Its widget does not override the parent constructor**, which puts it on the safe side of the EPT family rule. `ept_cta` (wave 83) and `ept_video_and_image_gallery` (wave 86) both override `EptSettingsDefaultWidget::__construct()` with the stale five-argument call and fail with an `ArgumentCountError` against `ept_core` 2.0.0; components that do not override — this one, `ept_slick_slider`, `ept_timeline`, `ept_basic_button` — inherit the current signature and work.

Two things about counters specifically, and both are editorial rather than technical.

**A figure without a source is an assertion.** On a charity, public-sector or research site, headline statistics are exactly what a sceptical reader checks, and a component with nowhere to record where the number came from or when it was true encourages numbers nobody can defend. If the component has no field for it, the page around it needs one.

**An animated counter is motion, and the final value must not depend on it.** Respect `prefers-reduced-motion`, and make sure the number is present for a screen reader user or a visitor whose JavaScript never runs — an element that animates from zero and shows zero when it does not animate is a failure that looks like a design choice.

---

- Show headline figures on a page.
- Present three key numbers with labels.
- Animate a number counting up.
- Make a claim readable at a glance.
- Record the source of a statistic.
- Date a figure so it can be checked.
- Avoid indefensible headline numbers.
- Respect prefers-reduced-motion.
- Ensure the final value is always present.
- Avoid showing zero without JavaScript.
- Give screen readers the number.
- Recognise the safe EPT constructor pattern.
- Pin EPT family versions together.
- Update figures when they go stale.
- Document the module's behaviour for the team.
- Review it during a site audit.
- Verify its assumptions after an upgrade.
