<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Fluid UI adds the **Fluid Infusion** libraries to Drupal — an accessibility framework built around user preferences, letting visitors adjust text size, contrast, line spacing and layout to suit themselves.

---

Infusion comes from the Inclusive Design Research Centre and takes a different position from most accessibility widgets: rather than offering a fixed menu of "high contrast" and "big text" buttons, it implements a **preferences framework** where a visitor's chosen settings can persist and apply across participating sites. That grounding in inclusive-design research is the reason to prefer it over an ad-hoc overlay. This module supplies the Drupal integration — `src/Hook`, `src/Plugin` and `src/Form` with a settings form at `/admin/config/fluidui/adminsettings` and `css/fluid.css`. Two things to note. The settings route is gated by **`access administration pages`**, which is looser than the `administer site configuration` comparable modules use — that permission is granted to fairly ordinary staff roles on many sites, and this form changes site-wide front-end behaviour. And the core requirement `^10.5 || ^11.2` is unusually narrow, targeting recent minors only. As with `accessibility_menu` (wave 60), the honest framing is that a preferences layer helps visitors who want to adjust presentation and does not substitute for accessible markup, keyboard operability and adequate contrast in the design itself.

---

- Let visitors adjust text size and contrast.
- Offer line-spacing and layout preferences.
- Use a research-grounded accessibility framework.
- Persist a visitor's display preferences.
- Support users with low vision.
- Meet a procurement requirement for personalisation.
- Offer preferences beyond a fixed widget.
- Adjust font family for readability.
- Give a public-sector site an inclusive-design layer.
- Support dyslexia-friendly typography.
- Let visitors simplify the interface.
- Apply preferences across a site.
- Complement real accessibility work.
- Provide a keyboard-reachable preferences panel.
- Support an inclusive design programme.
- Offer contrast themes to visitors.
- Reduce reliance on browser zoom.
- Align with IDRC inclusive design practice.
