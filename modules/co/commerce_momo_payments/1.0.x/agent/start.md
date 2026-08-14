<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Agent orientation: commerce_momo_payments

**What:** Commerce gateway for MoMo (Vietnam) — Wallet/ATM/CreditCard offsite payment.

**Key files:**
- `src/Plugin/Commerce/PaymentGateway/MoMoOffsitePaymentGatewayBase.php` — `getPayUrl()` (signs), `onReturn()`, `onNotify()`, `verifySignature()` (`hash_hmac sha256`), `generateSignature()`.
- Gateways: `MoMoWallet`, `MoMoPayWithATM`, `MoMoCreditCard`.

**Deps:** `commerce_payment`.

**Security (reviewed — D3, see report):** signature IS verified with the merchant secret, BUT `verifySignature()` IGNORES the `$order` arg and never checks the signed `orderId`/`amount` against the order being completed; `onNotify()` has a "should verify amount and currency" TODO. Enables cross-order replay of a valid MoMo-signed receipt onto another order.
