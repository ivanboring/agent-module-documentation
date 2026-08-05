<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Watchdog Mailer emails Drupal log entries as they are written, turning the log into an alerting channel without a separate monitoring stack.

---

It implements a logger channel — `src/Logger` — so it receives entries at the moment they are logged rather than polling dblog, and a settings form at `/admin/config/development/watchdog_mailer` chooses which entries qualify and where they go. Its own permission, `administer watchdog_mailer`, gates that form. Its shape is the same as `emaillog` from the logging_alerts project documented in wave 58, and the same two cautions apply with the same force. First, **content**: Drupal log messages routinely contain user input, usernames, IP addresses and request paths, so mailing them moves potentially personal data through a mail provider and into inboxes — a privacy decision, not merely an operational one. Second, **volume**: an erroring site produces log entries at machine speed, and without a severity threshold and some form of rate limiting a single fault can generate thousands of messages, which is how a monitoring aid becomes an outage of its own. Configure the threshold deliberately before enabling it on production. Core requirement is `^10 || ^11`, and a `.tugboat/` config means upstream maintains a demo environment.

---

- Email critical errors as they happen.
- Alert on PHP errors without a monitoring stack.
- Notify a developer of a fatal error.
- Watch for security-relevant log entries.
- Detect a failing cron job by email.
- Send alerts to an on-call address.
- Filter alerts by severity.
- Get notified when a payment integration fails.
- Monitor a site with no external tooling budget.
- Escalate errors out of hours.
- Keep a record of errors outside the database.
- Alert on access-denied spikes.
- Notify a team channel via an email gateway.
- Catch errors that never reach a user report.
- Restrict alert configuration to administrators.
- Complement dblog with push notification.
- Watch a newly deployed feature for errors.
- Provide evidence for an incident review.
