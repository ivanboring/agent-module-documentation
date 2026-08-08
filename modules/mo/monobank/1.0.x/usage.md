<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Monobank provides payments via the Monobank acquiring API for a Drupal store.

---

Monobank provides payment integration with Monobank (the Ukrainian bank's acquiring API) — creating
invoices and accepting payments for a Drupal store (it integrates with a basket/order system). It is
configured at `monobank.settings`, provides its own permissions, and is in the Online store package.

**Security caveat — the payment status webhook does not verify Monobank's signature (payment-forgery risk).**
The callback route `/monobank/status` (`Pages::pages('status')`, permission `access content` — effectively
public) reads the POST body and, if the posted `ccy`/`amount`/`invoiceId` match the stored payment and
`status == 'success'`, marks the payment paid (`paytime`, status `success`) and calls the basket's
`paymentFinish()` to fulfil the order — **without reading or verifying Monobank's `X-Sign` header** (Monobank
ECDSA-signs webhooks against `/api/merchant/pubkey`). The only "authentication" is knowing the
`invoiceId`/`amount`/`currency`, which are values the payer sees for their own order — so a customer could
POST a forged `status=success` to `/monobank/status?id={their_payment_id}` and have the order fulfilled
**without actually paying**. (The user-facing `payment_result` page does re-check via the authoritative
server-side `getStatus()`, but the order-fulfilment side-effects run in the unverified webhook path.) If you
use this module, **do not rely on the webhook alone** — verify the `X-Sign` signature against Monobank's
public key, or always confirm payment via server-side `getStatus()` before fulfilling, and operate over
HTTPS. Store the Monobank token as a secret. See the local security.md.

---

- Accept Monobank payments.
- Create Monobank invoices.
- Integrate with a basket/order system.
- Configure at monobank.settings.
- Provide its own permissions.
- KNOW the webhook doesn't verify X-Sign.
- Understand the payment-forgery risk.
- Not rely on the webhook status alone.
- Verify X-Sign against Monobank's pubkey.
- Confirm payment via server-side getStatus() before fulfilling.
- Operate over HTTPS.
- Store the Monobank token as a secret.
- Guard /monobank/status against forged success.
- Fulfil orders only on verified payment.
- Handle acquiring securely.
- Note the callback is public (access content).
- Avoid free-order fulfilment.
- Confirm payment authoritatively.
- Review the webhook handling.
- Secure the payment flow.
