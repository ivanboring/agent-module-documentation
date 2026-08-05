<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Browser Back Button addresses what happens when a visitor uses the browser's back button on pages whose state does not survive it.

---

The back button is the most-used control in any browser and the one web applications handle worst. The specific failure is the **back/forward cache**: browsers restore a previous page from memory rather than re-requesting it, so the page a visitor returns to is the DOM as they left it — with a stale cart count, a form still showing a submitted state, a logged-in header on a page they have since logged out of, or an AJAX-loaded region that no longer matches the server. On a shop or a members' area those are not cosmetic; a restored page showing an authenticated state after logout is a real disclosure on a shared computer, and a stale cart is a support ticket. This module handles that class of problem, version **2.0.2** on core `^10 || ^11`, no dependencies. Two things to understand before reaching for it. **The mechanism matters** — forcing a reload on restore fixes correctness and costs the speed the back/forward cache exists to provide, and doing it on every page is a large regression for a problem that affects a few; the better shape is to target the pages whose state genuinely cannot survive restoration. And **the underlying problem is usually cache headers**: a page that must not be restored should say so, and `Cache-Control: no-store` is the standard, server-side way to opt out of the back/forward cache — a JavaScript workaround is what you use when the headers are not yours to set.

---

- Fix a stale cart count after going back.
- Prevent a logged-out page showing as logged in.
- Reload a page restored from cache.
- Fix a form showing a stale submitted state.
- Handle back navigation on a members' area.
- Prevent stale AJAX content on return.
- Fix an incorrect header after logout.
- Handle back button on a checkout page.
- Prevent a restored page showing old data.
- Fix navigation state after going back.
- Handle history navigation in an application.
- Prevent confusion on a shared computer.
- Fix a stale notification count.
- Handle back navigation on a dashboard.
- Reload a personalised page on return.
- Prevent a resubmitted form state.
- Fix back-button behaviour on a wizard.
- Handle restoration of a filtered listing.
