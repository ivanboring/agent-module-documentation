<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Avoid Sending Mail suppresses emails to blocklisted addresses (e.g. for staging).

---

Avoid sending mail (asm) allows you to avoid sending emails to a configured email list — blocking outbound mail to specified addresses, useful on staging/dev environments to prevent accidentally emailing real users, or to suppress mail to specific problematic addresses.

Administration is gated by `administer asm email blocked`. It's an operations/dev tool with no content role. Depends on core `text`; supports Drupal 10 and 11.

---

- Block outgoing emails to a list.
- Suppress mail to specified addresses.
- Prevent accidental emails on staging.
- Suppress problematic addresses.
- Protect real users on dev.
- Gate admin with `administer asm email blocked`.
- Depend on core `text`.
- Support Drupal 10 and 11.
- Carry no content role.
- Configure the blocklist.
- Aid operations/dev.
- Handle mail suppression.
- Block emails
- Support staging
- Avoid sending mail.
- Manage the block list.
- Suppress mail.
- Support ops
