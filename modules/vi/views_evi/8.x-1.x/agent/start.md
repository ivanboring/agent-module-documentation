<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Views EVI (views_evi) — agent index

Injects values into a view's **exposed** filters from arguments/context. Depends on `views`.
Configure through `views_ui.settings_advanced` (per view). Version **8.x-1.3** (2024).
Core requirement `^8.7.7 || ^9 || ^10 || ^11`.

Key facts:
- **It bridges the gap between the two Views filter kinds:**
  - *contextual filters* take a value from URL/context but the visitor **cannot** change it;
  - *exposed filters* the visitor controls but only have **static** defaults.
  EVI gives an exposed filter a context-supplied value the visitor can still override.
- **Scope is deliberately narrow.** Its own description says "a first step to abstract value
  providers from filters" — and the 2024 release date suggests that is where it stopped.
- **Consider the alternative first.** For a single view, `hook_views_pre_view()` or a form alter
  sets an exposed default in a few lines. Weigh that against another configuration surface.
