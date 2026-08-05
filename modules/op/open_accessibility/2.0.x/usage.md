<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Open Accessibility adds the Open Accessibility JavaScript widget — a floating toolbar offering larger text, higher contrast, link highlighting and similar adjustments.

---

These toolbars are widely requested, usually by someone who has been told the site must be accessible and is looking for a visible sign of it. The module does what it says: a configuration form at `/admin/config/user-interface/open-accessibility` behind a `configure open accessibility` permission, and a widget on the front end. Version **2.0.1** on core `^10 || ^11`. What has to be said alongside it, because it is the single most consequential piece of advice in this area: **an accessibility overlay is not accessibility conformance, and the accessibility community is broadly opposed to overlays** on the grounds that they address symptoms and can actively interfere. The reasons are concrete. People who need larger text or higher contrast overwhelmingly already have it configured in their operating system and browser, and a site-level widget duplicates that at best. Screen-reader users bring their own software, and an overlay that manipulates the DOM can conflict with it. Most importantly, an overlay cannot fix what actually fails an audit — missing alternative text, unlabelled form controls, keyboard traps, poor heading structure, insufficient contrast in the design itself — all of which live in the markup and the content. If the goal is a legal or procurement requirement (WCAG 2.2 AA, EN 301 549, the European Accessibility Act), that is met by fixing the site, and an overlay can even be cited as evidence that the underlying problems were known. Reach for this only as an addition to a site that already conforms, never as a route to conformance.

---

- Add a text-resize control.
- Offer a high-contrast mode.
- Highlight links on request.
- Add a visible accessibility widget.
- Respond to a stakeholder request.
- Offer readable-font switching.
- Add a dyslexia-friendly font option.
- Provide a cursor size control.
- Add a widget alongside a conformant site.
- Offer per-visitor display preferences.
- Provide a quick contrast toggle.
- Add an accessibility statement link.
- Support users without OS-level settings.
- Offer image-hiding for focus.
- Provide a keyboard-navigation hint.
- Add a visible commitment signal.
- Support a public-sector expectation.
- Complement an accessibility programme.
