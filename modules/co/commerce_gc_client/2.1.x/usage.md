<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Commerce GC Client provides Commerce integration with GoCardless.

---

Commerce GoCardless Client provides a **Drupal Commerce integration with GoCardless** — the bank-debit
(Direct Debit) payment provider — for taking recurring/one-off bank payments. It depends on Commerce Payment,
Product, Cart and Checkout, in the Commerce (contrib) package.

Use it to accept GoCardless bank payments. It is an e-commerce/payment feature with a Direct-Debit nuance:
bank debits are **asynchronous** (a payment is confirmed later, and can fail/return), so an order isn't
guaranteed paid at checkout — reconcile via GoCardless's **signed webhooks** (verify the webhook signature
before acting). Handle the GoCardless **API access token/webhook secret** as secrets over HTTPS. It has no
access-control role. Configure the GoCardless credentials.

---

- Accept GoCardless bank payments.
- Take Direct Debit / bank debits.
- Support recurring/one-off payments.
- Depend on Commerce Payment/Product/Cart/Checkout.
- KNOW bank debits are asynchronous.
- Know an order isn't guaranteed paid at checkout.
- Reconcile via signed webhooks.
- Verify the webhook signature.
- Store the API token/webhook secret as secrets.
- Use HTTPS.
- Have no access-control role.
- Configure the GoCardless credentials.
- Handle GoCardless payments.
- Verify payments.
- Configure the gateway.
- Confirm via webhook.
- Handle the integration.
- Take bank payments.
- Secure the credentials.
- Provide GoCardless payment.
