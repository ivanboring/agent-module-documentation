<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Aggregation JS CSS async defer adds `async` or `defer` attributes to asset libraries and produces aggregate files carrying those attributes.

---

A synchronous `<script>` in the document blocks parsing while it downloads and executes, which is the single largest self-inflicted delay on most pages. `defer` fixes that by downloading in parallel and executing after parsing, in order; `async` downloads in parallel and executes whenever it arrives, out of order. Drupal supports these per library in `libraries.yml` — but only for libraries you control, and a site's script weight is mostly contrib and core, whose declarations are not yours to edit. This module makes the attribute a site-level setting and, importantly, handles the aggregation interaction: aggregates group libraries together, so a group containing one script that must not be deferred and one that should cannot simply be given an attribute. Version **1.0.1** on core `^10 || ^11`. Two things make this a change to test rather than to apply. **Order and timing are what breaks**: `async` reorders execution, so a script depending on another that has not run yet fails intermittently — which is the worst failure mode, because it depends on network timing and will not reproduce on a fast connection. `defer` preserves order and is the safe default; reach for `async` only for genuinely independent scripts such as analytics. And **Drupal's own JavaScript has dependencies** — `drupalSettings`, `once`, behaviours attaching on `DOMContentLoaded` — so an attribute applied broadly to core and contrib libraries is exactly where intermittent breakage comes from. Measure the gain, apply narrowly, and test on a throttled connection rather than a local one.

---

- Defer render-blocking scripts.
- Add async to an analytics script.
- Improve Largest Contentful Paint.
- Reduce parser-blocking time.
- Improve a Lighthouse performance score.
- Defer a contrib module's library.
- Apply attributes to aggregates.
- Improve first paint.
- Reduce time to interactive.
- Defer a third-party widget.
- Improve mobile performance.
- Address a Core Web Vitals warning.
- Load a non-critical script asynchronously.
- Improve a marketing page's speed.
- Reduce blocking on a slow connection.
- Tune asset loading site-wide.
- Support a performance audit.
- Defer scripts a page does not need immediately.
