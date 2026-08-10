<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Social Auth Yandex provides Social Auth integration for Yandex.

---

Social Auth Yandex adds **"Login with Yandex"** to the **Social Auth** framework — letting users register/
log in with their Yandex account via OAuth 2.0. It provides the Yandex network plugin; the redirect/callback
flow is handled by the Social Auth base module. It depends on `social_auth`, in the Social package.

Use it to offer Yandex social login. **Security caveat (this version): it disables TLS certificate verification
on the OAuth provider.** `YandexAuth::getExtraSdkSettings()` returns `'verify' => FALSE`, which is passed to
the OAuth2/Guzzle client — so **certificate verification is off for all requests to Yandex** (authorization,
the token exchange, and the userinfo fetch). An on-path (MITM) attacker between your server and Yandex can
steal the **access token** and, worse, **forge the userinfo** that Social Auth maps to a Drupal account —
letting them log in as **any user whose Yandex identity they forge** (impersonation/account takeover). Do
**not** run this as-is over an untrusted network; the fix is to remove `'verify' => FALSE` (restore default TLS
verification). Store the Yandex **client secret** as a secret and use HTTPS. See the local security.md.

---

- Add Login with Yandex (OAuth).
- Register/log in with Yandex.
- Provide the Yandex network plugin.
- Delegate the flow to Social Auth.
- KNOW this version disables TLS verification (verify => FALSE).
- Understand MITM can steal the token.
- Understand MITM can forge userinfo → log in as anyone.
- Remove 'verify' => FALSE to fix.
- Not run it as-is over untrusted networks.
- Store the Yandex client secret as a secret.
- Use HTTPS.
- Depend on social_auth.
- Handle Yandex login.
- Provide social login.
- Configure OAuth.
- Restore TLS verification.
- Log in via Yandex.
- Guard the OAuth flow.
- Secure the provider.
- Provide Yandex SSO.
