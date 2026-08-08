<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
YooMoney helps set up payment acceptance via YooMoney/YooKassa — but as shipped it disables TLS certificate verification on its OAuth and logging requests to the payment provider, a man-in-the-middle exposure.

---

YooMoney (machine name yookassa) integrates the YooMoney/YooKassa payment platform with Drupal. It is a payment module, and this review found a security problem that must be understood before use: two of its outbound requests to the payment provider set Guzzle's `'verify' => false`, disabling TLS certificate verification. The serious one is `YooKassaOauth::sendRequest()`, the OAuth credential/token exchange used to set up payment acceptance — with certificate verification off, an on-path attacker can present a forged certificate and man-in-the-middle that exchange, intercepting the OAuth token and shop credentials or injecting a response. TLS verification to a payment API is mandatory, and there is no legitimate production reason to disable it; this is likely a leftover development workaround. The module's local security notes detail it. Do not run this in production until `'verify' => false` is removed from both `YooKassaOauth::sendRequest()` and `YooKassaLoggerHelper::makeRequest()` (Guzzle verifies by default). Separately, on adoption confirm incoming YooKassa notifications are signature-verified before a payment is treated as accepted.

---

- Accept payments via YooMoney/YooKassa.
- Set up YooKassa payment.
- DO NOT run in production as shipped.
- Remove the verify=>false lines first.
- Restore TLS verification on payment requests.
- Understand the MITM exposure.
- Fix the OAuth request TLS setting.
- Fix the logger request TLS setting.
- Confirm notification signature verification.
- Keep payment credentials secure.
- Patch before use.
- Verify the payment provider's certificate.
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