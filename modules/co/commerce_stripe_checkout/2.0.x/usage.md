<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Commerce Stripe Checkout integrates Stripe Checkout as a Drupal Commerce payment gateway, verifying Stripe webhooks with the signing secret when configured.

---

Commerce Stripe Checkout provides a Drupal Commerce payment gateway using Stripe Checkout — the
customer is redirected to Stripe's hosted checkout to pay, and Stripe notifies the site of the result
via a webhook. The webhook controller verifies each request with `Stripe\Webhook::constructEvent()`
using the `Stripe-Signature` header and the configured webhook signing secret (`whsec_...`), rejecting
requests whose signature does not validate. It depends on the Commerce order/cart/payment stack.

**Configure the webhook signing secret for production.** The module supports signature verification and
performs it whenever a webhook secret is set; if the secret field is left **empty**, signature
verification is disabled and the endpoint processes unverified events — a state the module explicitly
warns about in both the settings form ("not recommended for production") and its logs. Leaving it empty
means an attacker who can POST to the webhook URL could forge "payment succeeded" events, so always set
the signing secret from the Stripe Dashboard. Store the Stripe secret key and webhook secret as
secrets. With the secret configured, forged webhook calls are correctly rejected.

---

- Accept payments via Stripe Checkout.
- Redirect customers to Stripe's hosted checkout.
- Verify Stripe webhooks via constructEvent.
- Use the Stripe-Signature header to verify.
- Reject webhooks with an invalid signature.
- Configure the webhook signing secret (whsec_).
- Set the signing secret for production.
- Know empty secret disables verification.
- Store the Stripe secret key as a secret.
- Store the webhook secret as a secret.
- Depend on the Commerce payment stack.
- Create Commerce payments against orders.
- Reject forged 'payment succeeded' events when secret set.
- Integrate Stripe Checkout into Commerce.
- Handle async webhook notifications.
- Keep card entry on Stripe's hosted page.
- Map Stripe events to payment state.
- Switch between Stripe test and live keys.
- Heed the settings-form production warning.
- Reconcile Stripe events with orders.
