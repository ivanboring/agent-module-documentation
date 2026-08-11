<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Commerce Coinbase adds a Coinbase Commerce crypto payment gateway with a signed webhook.

---

Commerce Coinbase implements the Coinbase Commerce API as an off-site payment gateway for Drupal Commerce, letting customers pay with cryptocurrency. Coinbase notifies the site of payment status via a webhook at `/coinbase/webhook/{commerce_payment_gateway}`.

The webhook is anonymous by design but **verifies the `X-CC-Webhook-Signature` HMAC** (recomputes `hash_hmac('sha256', payload, secret)` and rejects on mismatch before fulfilling) — so forged callbacks are rejected. One minor hardening gap: the signature comparison uses PHP `!=` rather than `hash_equals()` (non-constant-time; timing side-channel on a secret-keyed HMAC, network-impractical). Depends on Commerce `commerce` and `commerce_payment`; supports Drupal 9, 10, and 11.

---

- Accept cryptocurrency payments.
- Integrate the Coinbase Commerce API.
- Provide an off-site gateway.
- Receive status via a webhook.
- Verify the webhook HMAC signature.
- Reject forged callbacks.
- Recompute `hash_hmac('sha256', ...)`.
- Use `!=` (non-constant-time) — should be `hash_equals()`.
- Depend on Commerce `commerce` and `commerce_payment`.
- Support Drupal 9, 10, and 11.
- Configure the webhook secret.
- Complete payments on `charge:confirmed`.
- Dedup already-paid orders.
- Store the remote charge code.
- Support crypto checkout.
- Handle Coinbase webhooks securely.
- Finalize orders on confirmation.
- Fix the timing compare with `hash_equals()`.
