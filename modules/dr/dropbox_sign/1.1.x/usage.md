<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Dropbox Sign provides an API to generate and process eSignature requests.

---

Dropbox Sign integrates the **Dropbox Sign (formerly HelloSign) eSignature API** — creating signature
requests (embedded or email) and processing status callbacks, so documents can be e-signed from Drupal. It
depends on the Encryption module, provides its own permissions.

Use it to add e-signature workflows. It is an integration feature and its callback handling is done **correctly**:
the public callback route `/process-dropbox-sign-callback` (`_access: 'TRUE'`, as Dropbox Sign posts anonymously)
**verifies the event authenticity** — it computes `hash_hmac('sha256', event_time . event_type, api_key)` and
rejects the request unless it matches the received `event_hash`, and it checks the event time to **prevent
replay**. The API key is stored **encrypted** (via the Encryption module) and decrypted at use. (Minor hardening:
the HMAC comparison uses `!==` rather than `hash_equals()`, a non-constant-time compare — not practically
exploitable here, but `hash_equals` is preferable.) Store the Dropbox Sign **API key** securely over HTTPS. It
has no access-control role beyond its permission. Configure the API key.

---

- Generate eSignature requests.
- Support embedded/email signing.
- Process status callbacks.
- Depend on the Encryption module.
- Provide its own permissions.
- Use the Dropbox Sign API.
- VERIFY the callback HMAC event_hash.
- Reject on mismatch + prevent replay.
- Store the API key encrypted.
- Prefer hash_equals over !== (minor).
- Store the API key securely (HTTPS).
- Have no access-control role beyond permission.
- Handle e-signatures.
- Verify callbacks.
- Configure the API key.
- Sign documents.
- Handle the integration.
- Process signatures.
- Secure the key.
- Provide e-signature workflows.
