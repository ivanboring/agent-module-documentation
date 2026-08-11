<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Chromeless renders only the main content when a chromeless query parameter is present.

---

Chromeless **strips page chrome on demand** — adding a `chromeless` query parameter that, when present, makes
Drupal render only the main content (no header/footer/blocks), useful for embedding pages in iframes or printing.
It works on core 10.5–11.

Use it to get bare-content renders. It is a display/theming feature; it only removes the surrounding chrome (the
main content still enforces its own access, so this is not an access bypass) and has no access-control role. Use the
`?chromeless` parameter.

---

- Render only main content on demand.
- Add a chromeless query parameter.
- Support iframe/print use.
- Serve display/theming.
- Strip page chrome.
- Bare-content rendering.
- Only remove surrounding chrome (main content still enforces its access - not an access bypass).
- Have no access-control role.
- Use the ?chromeless parameter.
- Handle chromeless rendering.
- Strip chrome.
- Configure nothing (param).
- Render bare.
- Handle the display.
- Remove chrome.
- Configure display.
- Handle the parameter.
- Show content only.
- Provide chromeless rendering.
