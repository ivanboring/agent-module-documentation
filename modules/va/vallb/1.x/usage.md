<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Views Ajax Lazy Load Block builds a view block's output using the Intersection Observer API, loading the view when the block scrolls into view.

---

A view block below the fold does not need to render on initial page load. VALLB builds a view block's output lazily via the Intersection Observer API, loading it when it scrolls into view — improving initial performance. It is a performance/display feature. The security note is the standard deferred-render one: the lazy-loaded view content must apply the same access as inline rendering, so the deferred content does not expose data the user could not otherwise see. Confirm access is honoured on the lazy-load path.

---

- Lazy-load a view block.
- Defer a below-the-fold view.
- Load a view on scroll.
- Improve initial performance.
- Use Intersection Observer.
- Confirm access on lazy load.
- Defer view rendering.
- Load content when visible.
- Speed up the page.
- Honour view access.
- Enable when needed.
- Keep disabled otherwise.
- Restrict administration.
- Confirm on your site.
- Test before production.
- Review configuration.
- Pair with related modules.
- Verify theme fit.
- Match your use case.
- Confirm compatibility.
- Use deliberately.
- Review after upgrades.