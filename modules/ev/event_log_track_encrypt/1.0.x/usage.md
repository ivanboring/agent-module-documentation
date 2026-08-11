<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Encrypted-log support for the Events Log Track (ELT) module.

---

Event Log Track Encrypt adds support for encrypted logs to the Events Log Track module (ELT) — so tracked event-log entries (which may contain sensitive data) are encrypted at rest using the Encrypt/Key framework, protecting log content in the database.

The encryption profile/key is handled via the `encrypt` and `key` modules (store the key securely, env-backed). Depends on `event_log_track`, `encrypt`, and `key`; supports Drupal 10 and 11.

---

- Encrypt Events Log Track entries.
- Protect log data at rest.
- Use the Encrypt/Key framework.
- Secure sensitive log content.
- Handle the key via `key`.
- Store the key securely (env-backed).
- Depend on `event_log_track`, `encrypt`, `key`.
- Support Drupal 10 and 11.
- Configure the encryption profile.
- Aid log security.
- Handle encrypted logs.
- Protect logs
- Support Drupal.
- Support Drupal.
- Support Drupal.
