<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# PhonePe Payment — agent index

A **PhonePe payment gateway for Drupal Commerce** (UPI/cards). Version **4.0.1**. Core `^9||^10||^11`.

**SECURITY — danger 4, do not deploy unpatched.** `/phonepay_payment/callback/{order_id}` (`_permission:
'access content'`) reads an anonymous POST and, on `code == PAYMENT_SUCCESS`, **creates a completed
`commerce_payment`** — with **no `X-VERIFY` checksum check** (the `verifyResponse()` helper is unused) and **no
status re-fetch**. Anyone who knows an order id can POST a forged success and get **fulfillment without paying**.
Fix: verify X-VERIFY / call PhonePe's status API before creating the payment. Recorded as a danger-4 finding.
