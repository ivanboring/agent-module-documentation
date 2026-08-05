<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Views EVI injects values into a view's exposed filters from elsewhere — an argument, the current user, contextual data — so a filter can be pre-filled or driven by context while remaining an exposed filter.

---

Views draws a hard line between contextual filters, which take a value from the URL or from context and cannot be changed by the visitor, and exposed filters, which the visitor controls through a form. The awkward cases sit between: a listing that should default to the current user's department but still let them change it, a view embedded on a term page that should start filtered to that term. Contextual filters cannot be overridden by the visitor; exposed filters have only static default values. This module bridges that by letting a value provider supply the exposed filter's value, and its own description calls it "a first step to abstract value providers from filters" — which is an honest statement of scope, and version **8.x-1.3** from 2024 suggests that first step is where it stopped. Core requirement spans `^8.7.7` through `^11`. Configuration is per-view, reached through the Views UI advanced settings. Worth knowing that core has since gained more capability in this area — an exposed filter's default can often be set with a small `hook_views_pre_view()` or a form alter, so evaluate whether the configuration surface earns its place over a few lines of code for a single view.

---

- Pre-fill an exposed filter from the URL.
- Default a filter to the current user.
- Filter a view by the current term.
- Let visitors override a contextual default.
- Combine context with an exposed form.
- Default a department filter per user.
- Embed a view filtered by page context.
- Avoid duplicating a view per context.
- Pre-select a category on a listing.
- Drive a filter from a route parameter.
- Reduce the number of view displays.
- Default a date filter to today.
- Make an exposed filter context-aware.
- Filter by the current node's field.
- Support a personalised listing.
- Set a filter default per role.
- Avoid a custom form alter.
- Reuse one view across contexts.
