<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Commerce Sermepa / Redsýs (commerce_sermepa) — agent index

Drupal Commerce payment gateway for **Redsýs** (formerly Sermepa), the platform behind most
Spanish banks. Depends on `commerce_payment`; protocol implemented by
`commerceredsys/sermepa ^1.0.9`. Composer accepts Commerce `^2.0 || ^3.0`.
Core requirement `^10 || ^11`.

Key facts:
- **No routing file of its own.** The gateway's endpoints — including the asynchronous
  notification the bank posts to — come from Commerce's payment routing. That is correct: Commerce
  defines and protects those paths, and a gateway plugin should not invent its own.
- **The notification callback is the security-critical surface**, as with every redirect-based
  gateway: it must be reachable without a session (the bank has none) and is therefore
  authenticated by **HMAC signature**, which the `commerceredsys/sermepa` library implements. Any
  local patching of signature verification is a payment-integrity change — treat it accordingly.
- **Merchant key handling:** the Redsýs merchant key is a secret. On this repo's convention put
  it in an environment variable (`ddev dotenv set`) surfaced through a Key entity, and keep it out
  of exported configuration.
- Redsýs separates **test and production** by endpoint *and* key. A mismatch surfaces as a
  signature failure rather than a helpful error — check the environment first when debugging one.
- Ships `ludwig.json` so the protocol library can be installed without Composer.
- `.info.yml` reports the legacy `version: '8.x-2.4'`.
