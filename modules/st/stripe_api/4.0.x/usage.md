<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Stripe API wires the Stripe PHP library into Drupal — credentials, a configured client, and a webhook endpoint that other modules subscribe to.

---

It is infrastructure rather than a payment feature: it does not take a payment, it makes the Stripe library available and turns Stripe's callbacks into Drupal events, so a subscription module, a donation form or a commerce integration can build on one authenticated client and one verified webhook rather than each inventing both. Version **4.0.2** on `^8` through `^11`, requiring **`key`** — a hard dependency, so the secret key comes from a Key entity backed by an environment variable and never reaches exported configuration, which is the arrangement every payment integration should have and many do not. **The webhook handling is done correctly and is worth citing as the reference implementation.** `/stripe/webhook` is `POST` only with `_permission: 'access content'`, and the real authentication is the signature: the handler calls the official SDK's `Webhook::constructEvent($payload, $sig_header, $secret)`, which verifies the HMAC against the endpoint's signing secret with a timestamp tolerance and a constant-time comparison. A failure returns **403 without dispatching anything**, webhooks can be disabled entirely by configuration, and a transient failure returns **503 with `Retry-After`** so Stripe retries rather than treating the event as delivered. That last detail is the one most integrations get wrong. Two notes. On an invalid signature the handler **logs the full request body**, which an unauthenticated caller controls — it goes through a placeholder so it is escaped, but it is a log-flooding surface on an endpoint anyone can reach. And the events dispatched are only as safe as their subscribers: a subscriber that trusts an event's contents without re-reading the object from Stripe is trusting a payload, and re-fetching is the standard advice for anything that moves money.

---

- Provide a Stripe client to other modules.
- Receive Stripe webhooks securely.
- Store a Stripe secret key in a Key entity.
- Build a donation integration.
- React to a payment succeeded event.
- Handle a subscription lifecycle event.
- Verify webhook signatures properly.
- Integrate Stripe with a custom module.
- Handle a failed payment notification.
- Support a commerce Stripe integration.
- React to a refund event.
- Build a membership payment flow.
- Log Stripe webhook events.
- Disable webhooks temporarily.
- Handle a dispute notification.
- Support a recurring billing integration.
- Provide test and live key configuration.
- React to a customer created event.
