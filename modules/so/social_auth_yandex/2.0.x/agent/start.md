<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Social Auth Yandex — agent index

Adds **Login with Yandex (OAuth 2.0)** to the **Social Auth** framework. Depends on `social_auth`. Version
**2.x** (dev). Core `^9||^10||^11`.

**SECURITY CAVEAT (danger 4):** `YandexAuth::getExtraSdkSettings()` returns **`'verify' => FALSE`** →
**TLS certificate verification is DISABLED** for all Yandex OAuth requests (token exchange + userinfo). An
on-path attacker can steal the token or **forge the userinfo** Social Auth maps to an account → **log in as any
user** (impersonation/takeover). Fix: remove `'verify' => FALSE`. Store the client secret as a secret; HTTPS.
See `security.md`.
