<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Commerce BTCPay provides a payment gateway for BTCPay Server.

---

Commerce BTCPay provides a **Drupal Commerce payment gateway for BTCPay Server** — accepting Bitcoin/crypto
payments through a self-hosted (or hosted) BTCPay Server, via the offsite-redirect flow. It depends on Commerce
Checkout and Commerce Payment, in the Commerce package.

Use it to accept crypto payments via BTCPay. It is an e-commerce/payment feature and its verification is done
**correctly**: on both the return leg and the notification (`onNotify`) it **re-fetches the current invoice
status directly from the BTCPay Server** (`getInvoice($invoiceId)`) and processes the payment based on that
**verified** status — the code explicitly states "we don't trust the return URL, we verify the actual status".
So a forged return/notification can't mark an order paid. The notify route is public (`_access: TRUE`, standard
for Commerce IPN) but safe because of the authoritative re-fetch. Pair the site with BTCPay via the API-key
flow, and store the **BTCPay API key** as a secret over HTTPS. Alpha release — verify for your version.
Configure the BTCPay Server URL and API key.

---

- Accept Bitcoin/crypto via BTCPay Server.
- Use the offsite-redirect flow.
- Support self-hosted BTCPay.
- Depend on Commerce Checkout/Payment.
- RE-FETCH invoice status from BTCPay Server.
- Process payment on the VERIFIED status.
- Not trust the return URL.
- Keep the public notify route safe via re-fetch.
- Pair via the API-key flow.
- Store the BTCPay API key as a secret over HTTPS.
- Have no access-control role.
- Verify for your (alpha) version.
- Handle BTCPay payments.
- Verify payments.
- Configure the gateway.
- Process crypto payments.
- Handle the integration.
- Take crypto.
- Secure the API key.
- Provide BTCPay payment.
