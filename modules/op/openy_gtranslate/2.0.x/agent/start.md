<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Open Y Google Translate (openy_gtranslate) — agent index

Block placing the **Google Translate widget**, packaged for Open Y / YMCA Website Services.
Version **2.0.0**. Core `^9 || ^10 || ^11`. No dependencies, routes, permissions or config.
Single class: `Plugin/Block/OpenYGTranslateBlock`.

**Three things to state — properties of the widget, not the module.**

1. **Machine translation is not site translation.** Nothing is reviewed, terminology is
   uncontrolled, translated pages are not indexed as translations. Legal, medical and safety
   content needs human translation regardless.
2. **Third-party script.** It loads from Google and sends page content there — privacy notice, and
   consent gating on EU-facing sites (see `usercentrics` / `consent_mode`).
3. **Drupal's multilingual system is unaffected** — this is a display overlay. The two coexist:
   real translations where they matter, widget as fallback elsewhere.