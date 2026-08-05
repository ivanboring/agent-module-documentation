<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Browser Back Button (browser_back_button) — agent index

Handles browser back-button behaviour on pages whose state does not survive it. No dependencies.
Version **2.0.2**. Core requirement `^10 || ^11`.

**The specific failure is the back/forward cache (bfcache).** Browsers restore a previous page from
memory rather than re-requesting it, so the visitor returns to **the DOM as they left it** — stale
cart count, a form still showing a submitted state, a logged-in header on a page they have since
logged out of, an AJAX region that no longer matches the server.

On a shop or members' area these are not cosmetic: **a restored page showing an authenticated state
after logout is a real disclosure on a shared computer**, and a stale cart is a support ticket.

**Two things to understand before reaching for it:**
1. **The mechanism matters.** Forcing a reload on restore fixes correctness and **costs the speed
   bfcache exists to provide**. Doing it site-wide is a large regression for a problem affecting a
   few pages — target the pages whose state genuinely cannot survive restoration.
2. **The underlying problem is usually cache headers.** A page that must not be restored should say
   so: **`Cache-Control: no-store`** is the standard server-side opt-out of bfcache. A JavaScript
   workaround is what you use when the headers are not yours to set.
