<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
A Vault Transit (encryption-as-a-service) encryption method for Encrypt.

---

Encrypt - Vault Transit provides a HashiCorp Vault encryption-as-a-service (Transit secrets engine) encryption method for the Encrypt module — so Drupal encrypts/decrypts data by calling Vault's Transit engine, keeping the encryption key inside Vault rather than on the Drupal server.

The Vault connection and token are handled via the `vault` and `key` modules (store the token securely, env-backed; use HTTPS to Vault). Depends on `encrypt`, `key`, and `vault`; supports Drupal 9.3+, 10, and 11.

---

- Encrypt via Vault Transit.
- Offer encryption-as-a-service.
- Keep keys inside Vault.
- Provide an Encrypt method.
- Call Vault's Transit engine.
- Handle the token via `vault`/`key`.
- Use HTTPS to Vault.
- Store the token securely (env-backed).
- Depend on `encrypt`, `key`, `vault`.
- Support Drupal 9.3+, 10, and 11.
- Aid data encryption.
- Protect secrets
- Support Drupal.
- Support Drupal.
- Support Drupal.
