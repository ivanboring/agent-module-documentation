<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Commerce Ifthenpay provides Commerce integration for Ifthenpay.

---

Commerce Ifthenpay provides **Drupal Commerce payment gateways for ifthenpay** (the Portuguese payment
provider) — Multibanco references, MBWay, and credit card — via `commerce_ifthenpay_mbway` and
`commerce_ifthenpay_cc` submodules. It depends on Commerce Payment, in the Commerce (contrib) package.

Use it to accept ifthenpay payments. Its payment trust boundaries are **implemented correctly** (verified):
Multibanco confirms payment by **polling ifthenpay's API server-side** (`MultibancoApiClient` checks the API's
`Status` — server-authoritative, nothing to forge), and the **credit-card** return handler (`IfthenpayCC::onReturn()`)
recomputes and **verifies the security key** `SK = SHA-256(orderId + amount + requestId + CCARD_KEY)` with a
strict `!==` and **re-checks that the charged amount equals the order amount**, throwing a PaymentGatewayException
on any mismatch — so forged/tampered returns are rejected and only genuinely-paid orders complete. Handle the
ifthenpay keys (mb_key, anti-phishing key, cccard_key) as **secrets**, and use HTTPS. It has no access-control
role. Configure the ifthenpay credentials.

---

- Accept ifthenpay payments.
- Support Multibanco/MBWay/credit card.
- Confirm Multibanco via server-side API polling.
- Verify the CC security key (SHA-256 with cccard_key).
- Re-check the charged amount vs the order.
- Throw on any verification mismatch.
- Reject forged/tampered returns.
- Handle ifthenpay keys as secrets.
- Use HTTPS.
- Depend on Commerce Payment.
- Have no access-control role.
- Configure the credentials.
- Handle ifthenpay payments.
- Verify payments.
- Configure the gateways.
- Process payments.
- Handle the return.
- Confirm payments.
- Secure the keys.
- Provide ifthenpay payments.
