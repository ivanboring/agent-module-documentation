<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Commerce Paypal Subscriptions allows doing recurring payments through the PayPal API.

---

Commerce Paypal Subscriptions enables recurring payments (subscriptions) via the PayPal API for Drupal
Commerce — so customers can subscribe and be billed recurringly through PayPal, with PayPal managing the
subscription lifecycle. It depends on Drupal Commerce, in the Commerce package.

Use it for PayPal-based recurring billing. Security notes: store the PayPal **API credentials (client ID/
secret) as secrets**, operate over HTTPS, and — importantly — if PayPal webhooks notify subscription/payment
events, **verify the PayPal webhook signature** (PayPal signs webhooks; verify so forged subscription/payment
events are rejected) and/or re-fetch the subscription status from PayPal's authenticated API before acting.
Confirm the environment (sandbox vs live). It is an e-commerce/subscriptions feature. Configure the PayPal
credentials.

---

- Enable PayPal recurring payments.
- Support subscriptions via PayPal.
- Bill customers recurringly.
- Depend on Drupal Commerce.
- Store PayPal client ID/secret as secrets.
- Operate over HTTPS.
- Verify the PayPal webhook signature.
- Reject forged subscription/payment events.
- Re-fetch subscription status from PayPal.
- Confirm sandbox vs live.
- Have no access-control role.
- Configure the PayPal credentials.
- Handle recurring billing.
- Configure subscriptions.
- Handle credentials securely.
- Verify webhooks.
- Integrate PayPal subscriptions.
- Configure the gateway.
- Handle PayPal API.
- Process subscriptions.
