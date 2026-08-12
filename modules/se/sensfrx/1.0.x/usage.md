<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Integrate the SensFRX fraud-detection service to screen users and orders.

---

SensFRX Fraud Prevention integrates advanced fraud detection and prevention into Drupal — screening user events (login, registration, comments) and Commerce orders/payments against the SensFRX SaaS to flag or block fraudulent activity, with an admin dashboard and webhooks for allow/deny decisions.

**Security warnings (as shipped, 1.0.2):** (1) the callback routes `/sensfrx/webhook` and `/sensfrx/transaction_webhook` are `_access: 'TRUE'` (anonymous) and act on an unsigned JSON body — an attacker can force any Commerce order to `completed` or `canceled`+refund with no signature check (unauthenticated order manipulation). (2) The outbound API cURL disables TLS verification (`CURLOPT_SSL_VERIFYPEER=false`, 4×) → MITM of the fraud API. (3) Functionality bug: `getSubscribedEvents()` references `PaymentEvents::` unconditionally, so on a site without Commerce Payment it fatals and the module's routes fail to register. **Verify webhook signatures and enable TLS verification.** The SensFRX API credentials are admin-configured; store securely (env-backed). Depends on core `user`, `system`, `node`, and `comment`; supports Drupal 10 and 11.

---

- Integrate SensFRX fraud detection.
- Screen users and orders.
- Flag/block fraudulent activity.
- Provide an admin dashboard.
- WARNING: webhooks verify no signature.
- WARNING: TLS verification disabled.
- Verify webhook signatures.
- Enable TLS verification.
- Depend on core `user`/`system`/`node`/`comment`.
- Store credentials securely.
- Handle fraud prevention.
- Support Drupal 10 and 11.
- Support Drupal.
- Support Drupal.
- Support Drupal.
