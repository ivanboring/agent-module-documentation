<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# CookieCuttr (cookiecuttr) — agent index
**Displays an EU cookie-policy consent notice via the CookieCuttr jQuery library.**

- **version:** 2.0.x
- **core:** ^10 || ^11
- **depends on:** js_cookie:js_cookie
- **route:** `/admin/config/user-interface/cookiecuttr` (`CookieCuttrForm`, permission `administer cookiecuttr`).
- **behaviour:** `CookiecuttrHooks::pageAttachmentsAlter` attaches the `cookiecuttr/cookiecuttr` library and `cookiecuttr_settings()` via `drupalSettings` on all pages.
- **permission:** `administer cookiecuttr`.
- **Security:** single admin settings route, permission-gated; front-end-only consent widget, no mutating/anonymous endpoints.
