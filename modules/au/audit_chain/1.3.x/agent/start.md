<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Audit Chain — agent index

**Tamper-evident, hash-chained audit logging for any Drupal module** — optional HMAC signing, at-rest encryption,
prefix seal, independent verification. Depends on core `user`, `key`, `encrypt`. Version **1.3.0**. Core
`^10.6||^11.3`.

**Security-positive** audit primitive — hash-chaining makes the log tamper-evident; HMAC (Key module) proves
authenticity; Encrypt protects at rest. Guarantees depend on **protecting the signing/encryption keys** (a leaked
signing key lets an attacker forge the chain); verify the chain periodically. No access role.
