<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
SIBS API provides integration with the SIBS API (a Portuguese/European payment services provider).

---

SIBS API integrates the SIBS API — SIBS is a major Portuguese/European payment and transaction
services provider — into Drupal, providing the connection and functionality to interact with SIBS
services (payments and related operations). It is in the SIBS package and provides its own permissions.

Use it where SIBS payment/services integration is required. The security-relevant points are standard for
a payment/financial API: store the SIBS API credentials as secrets, ensure requests use TLS (checked —
this module does not disable certificate verification), and — for any payment flow — verify transaction
outcomes against SIBS's authoritative API rather than trusting client-supplied callbacks. Configure the
SIBS credentials and the operations used.

---

- Integrate the SIBS payment API.
- Connect Drupal to SIBS services.
- Interact with SIBS payments.
- Store SIBS credentials as secrets.
- Use TLS for requests (checked).
- Verify outcomes via SIBS's API.
- Provide its own permissions.
- Handle financial API securely.
- Configure SIBS credentials.
- Not trust client callbacks for payments.
- Support Portuguese/European payments.
- Connect to SIBS.
- Handle transactions.
- Configure operations.
- Integrate payment services.
- Secure API credentials.
- Process SIBS operations.
- Verify transactions server-side.
- Use the SIBS integration.
- Handle payment flows.
