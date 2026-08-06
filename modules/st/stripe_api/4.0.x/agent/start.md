<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Stripe API (stripe_api) — agent index

Wires the **Stripe PHP library** into Drupal: credentials, a configured client, and a webhook
endpoint dispatched as Drupal events. **Infrastructure, not a payment feature.** Requires **`key`**.
Settings behind `administer stripe api`. Version **4.0.2**.
Core requirement `^8 || ^9 || ^10 || ^11`.

**The webhook handling is correct — cite it as the reference implementation.**
- `/stripe/webhook`, **POST only**, `_permission: 'access content'`, `_content_type_format: json`.
  The permission is not the gate; **the signature is**.
- `Webhook::constructEvent($payload, $sig_header, $secret)` — the **official SDK** method: HMAC
  against the endpoint signing secret, **timestamp tolerance**, constant-time comparison.
- Failure → **403 with nothing dispatched**.
- Webhooks can be **disabled by configuration** entirely.
- A transient failure → **503 with `Retry-After: 5`**, so Stripe **retries** rather than treating
  the event as delivered. **That is the detail most integrations get wrong.**

**The `key` dependency is hard**, so the secret never reaches exported configuration.

**Two notes:**
1. On invalid signature it **logs the full request body**, which an unauthenticated caller controls.
   It goes through a placeholder (so escaped), but it is a **log-flooding surface**.
2. **Events are only as safe as their subscribers.** A subscriber trusting an event's contents
   without **re-reading the object from Stripe** is trusting a payload — re-fetching is the standard
   advice for anything that moves money.
