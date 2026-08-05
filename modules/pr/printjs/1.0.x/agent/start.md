<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Printjs (printjs) — agent index

Print button backed by the **Print.js** library, printing a **specific region** (typically a view's
results) rather than the whole page. Configure at `/admin/config/…/printjs`. Packaged under
`Views`. Version **1.0.10**. Core requirement `^8.8 || ^9 || ^10 || ^11 || ^12`.

**Three things worth knowing:**
1. **A print stylesheet is still the better foundation** where the theme can be changed — it works
   with the browser's own print dialogue, with **Save as PDF**, with keyboard shortcuts, and
   without JavaScript. Print.js works around the absence of one rather than replacing the need.
2. **Print.js does not carry the page's stylesheets by default.** Output arrives unstyled unless
   the library is told which CSS to include — the most common complaint about it.
3. **The printed region is what is in the DOM.** Anything lazy-loaded, in an unopened tab, or behind
   "show more" is **absent** from the output — which surprises people printing a long listing.
