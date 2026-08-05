<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Watchdog Mailer (watchdog_mailer) — agent index

Emails Drupal log entries as they are written. No module dependencies.
Core requirement `^10 || ^11`. Settings at `/admin/config/development/watchdog_mailer`,
gated by its own permission **`administer watchdog_mailer`**.

Key facts:
- Implements a **logger channel** (`src/Logger/`), so it receives entries at log time rather than
  polling dblog.
- Same shape as `emaillog` (project `logging_alerts`, wave 58); if a site already runs one, it
  does not need the other. Choose on configuration ergonomics, not capability.
- **Two cautions to state before enabling on production:**
  1. *Content.* Log messages routinely carry user input, usernames, IP addresses and request
     paths. Emailing them routes that data through a mail provider and into inboxes — a privacy
     decision.
  2. *Volume.* An erroring site logs at machine speed. Set the severity threshold deliberately
     and confirm the mail path rate-limits, or one fault becomes thousands of messages.
- Ships a `.tugboat/config.yml` — upstream maintains a demo environment.
