<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
A cryptocurrency payment gateway that plugs into the contrib **Basket** commerce module, taking payments through the Bitaps service.
---
Admins configure credentials (including a secret key and currency) at `/admin/config/development/bitaps` (`access bitaps settings`). The module stores payment rows in a `payments_bitaps` table (`Bitaps` service) and renders a payment page at `/bitaps/pay` (`Pages` controller) where the customer completes payment. Bitaps calls back to `/bitaps/status`, where the module recomputes an HMAC-style SHA-256 hash from the payment id, amount and the configured secret key and compares it to the `hash` query parameter before updating the payment status and notifying Basket of order completion.

The public `/bitaps/{page_type}` route is served under the `access content` permission. Payment status transitions are authorized by the shared-secret hash check rather than by session/permission, which is typical for gateway callbacks — the security of the callback rests on the secrecy and strength of that key and hash comparison. This module was already security-reviewed for this knowledge base (a finding is recorded separately); treat its callback/handling code as the subject of that review. Setup: install Basket, enable this module, enter Bitaps credentials, and expose the Bitaps payment method in Basket.
---
- Accept cryptocurrency payments on a Basket-powered store.
- Configure Bitaps credentials and currency in the settings form.
- Present a hosted payment page to customers at `/bitaps/pay`.
- Receive payment status callbacks from Bitaps at `/bitaps/status`.
- Verify callbacks with a SHA-256 hash built from the secret key.
- Record payments in the `payments_bitaps` table.
- Update order/payment status on confirmed payments.
- Notify Basket (`paymentFinish`) when a payment is confirmed.
- Trigger Basket Noty notifications on status change (if enabled).
- Restrict settings access with `access bitaps settings`.
- Offer Bitaps as a Basket payment plugin (`BasketBitaps`).
- Localise strings via the module's translation context.
- Alter callback handling via `hook_bitaps_api_alter()`.
- Track per-order payment records by node id (`nid`).
- Store the active currency from module configuration.
- Load a payment by id, nid or session id.
- Create a new pending payment when an amount is supplied.
- Theme the payment page via `bitaps-pay.html.twig`.
- Integrate crypto checkout without a full Commerce stack.