<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Audit Chain provides tamper-evident, hash-chained audit logging for any Drupal module.

---

Audit Chain **provides tamper-evident, hash-chained audit logging** — a reusable audit-log primitive where each
entry is chained to the previous by hash (so any alteration/deletion breaks the chain and is detectable), with
optional HMAC signing, at-rest encryption, a "prefix seal" for historical segments, and independent verification.
Other modules (e.g. MCP Sentinel) build their audit trails on it. It depends on core User and the Key and Encrypt
modules; entries are written after the response is sent (off the user's critical path).

Use it to get an integrity-protected audit trail. This is a **security-positive** logging primitive built on the
right pieces: **hash-chaining** makes the log tamper-evident, **HMAC signing** (with a secret from the Key module)
lets you verify authenticity, and **Encrypt** protects entries at rest. Its guarantees depend on protecting the
signing/encryption keys: store the **HMAC/encryption keys securely** (Key module — a leaked signing key lets an
attacker forge a consistent chain), verify the chain periodically (independent verification is provided), and keep
backups of the seal points. It has no access-control role. Configure the keys and audit sources.

---

- Provide hash-chained audit logging.
- Make the log tamper-evident.
- Support HMAC signing + at-rest encryption.
- Depend on core User + Key + Encrypt.
- Serve security/audit.
- Underpin other modules' audit trails.
- BE security-positive (integrity-protected audit trail).
- Detect any alteration/deletion via a broken hash chain.
- DEPEND on protecting the signing/encryption keys (Key module).
- Store the HMAC/encryption keys securely (a leaked signing key allows forging the chain).
- Verify the chain periodically (independent verification provided) + back up seal points.
- Configure the keys and audit sources.
- Handle audit logging.
- Chain entries.
- Configure the keys.
- Sign entries.
- Encrypt entries.
- Verify the chain.
- Secure the keys.
- Provide tamper-evident audit logging.
