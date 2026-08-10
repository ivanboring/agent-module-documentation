<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Commerce USAePay provides Commerce integration for USAePay.

---

Commerce USAePay provides a **Drupal Commerce on-site payment gateway for USAePay** — capturing card
payments through USAePay's API. It depends on Commerce Payment, in the Commerce (contrib) package.

Use it to accept USAePay payments. Its payment handling is **server-authoritative** (reviewed): it submits the
transaction to **USAePay's API server-side** and derives the payment outcome from the **API response's
`ResultCode`** (`A` = approved → completed, `D` = declined, etc.) — the result comes from the authenticated API
call, not a client-supplied field, so it doesn't trust the browser for payment status. Because it is an on-site
gateway that handles card data, ensure **PCI-appropriate handling** (use HTTPS and consider tokenization to
keep PAN off your server), and store the USAePay **API credentials** as secrets. It has no access-control role.
Configure the USAePay credentials.

---

- Accept USAePay payments.
- Use an on-site gateway.
- Submit transactions to the USAePay API.
- Derive the outcome from the API ResultCode.
- NOT trust a client-supplied status.
- Handle card data (PCI).
- Use HTTPS and consider tokenization.
- Store USAePay credentials as secrets.
- Depend on Commerce Payment.
- Have no access-control role.
- Configure the USAePay credentials.
- Handle USAePay payments.
- Verify via the API.
- Configure the gateway.
- Process payments.
- Capture cards.
- Handle the integration.
- Confirm payments.
- Secure the credentials.
- Provide USAePay payment.
