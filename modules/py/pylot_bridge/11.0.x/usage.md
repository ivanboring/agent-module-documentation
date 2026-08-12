<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Bridge that imports Pylot/Bridge CMS tourism products into Drupal.

---

Pylot Bridge connects Drupal to the Pylot / Bridge CMS backend — importing tourism/product data (products, listings, GPS traces, POIs) and exposing frontend endpoints (product JSON feeds, image resizing, contact email) to render them on the site.

**Security warning (as shipped, 11.0.7):** several frontend routes are `_access: 'TRUE'` (anonymous). Most notably `/pylot_bridge/resize_image` server-side-fetches an attacker-supplied `file` URL and returns the processed image (**unauthenticated SSRF with response reflection**), and that fetch disables TLS verification (`verify_peer=>false`). Also `/pylot_bridge/send_email_recaptcha` sends site email to an attacker-supplied `dest` recipient (open mail relay behind a bypassable reCAPTCHA), and `/pylot_bridge/start_import` lets anonymous callers trigger re-imports. **Restrict these routes, allowlist the fetch host, and enable TLS verification.** The Pylot backend credentials are admin-configured; store them securely (env-backed). Depends on core `node` and `components`; supports Drupal 9, 10, and 11.

---

- Bridge Drupal to the Pylot/Bridge CMS.
- Import tourism products/listings.
- Import GPS traces and POIs.
- Expose product JSON feeds.
- WARNING: resize_image is an SSRF.
- WARNING: send_email is an open relay.
- Restrict the anonymous routes.
- Enable TLS verification on fetches.
- Depend on core `node` and `components`.
- Support Drupal 9, 10, and 11.
- Store backend credentials securely.
- Handle the Pylot import.
- Support Drupal.
- Support Drupal.
- Support Drupal.
