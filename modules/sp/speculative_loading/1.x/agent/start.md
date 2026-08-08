<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Speculative Loading (speculative_loading) — agent index

Configures the browser **Speculation Rules API** (prerender/prefetch likely-next pages). Version
**1.0.0-beta2**.

**Caveat:** prerendering fetches pages in the **background** — can trigger work/analytics/side
effects for unvisited pages. Prerender only safe, idempotent pages; be cautious with GET side
effects. Prefetch adds bandwidth.