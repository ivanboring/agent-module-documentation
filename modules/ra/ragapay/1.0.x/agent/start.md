<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# RagaPay — agent orientation

Commerce off-site payment gateway + notification webhook.

- Version 1.0.x, core ^10||^11, deps commerce_payment/commerce_price. Gateway plugin `ragapay_offsite`.
- CRITICAL SECURITY FINDING (unauthenticated forged payment / fraudulent fulfillment):
  - Route `/ragapay/notification` is gated only by `_permission: 'access content'` → effectively anonymous.
  - `NotificationController::__invoke` (src/Controller/NotificationController.php) does `parse_str($request->getContent(), $data)` then, if `order_number` present, calls `RagaPayManager::updateOrder($order_number, $data)`.
  - `RagaPayManager::updateOrder` (src/Service/RagaPayManager.php) loads the order + its ragapay payment and sets the payment state from the attacker-controlled `status` field — `status=success` → `completed` — with NO signature/HMAC verification and NO amount/currency binding.
  - `HashBuilder` exists but is only used on the OUTBOUND redirect; the inbound notification hash is never validated.
  - Exploit: anon POSTs `order_number=<id>&status=success&id=x` → payment marked completed → order fulfilled without payment. Order IDs are sequential/guessable.
- FIX: verify the RagaPay signature on the notification, recompute/compare the hash bound to order id+amount+currency+password, reject unsigned/mismatched, and lock the route down.
