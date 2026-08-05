<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Logging and alerts routes Drupal's log messages somewhere other than the database: **emaillog** sends them to email addresses with different severities going to different recipients, and **errorlog** writes them to the web server's error log.

---

The project has an unusual shape worth knowing before installing it: there is **no module at the project root**. `logging_alerts/` contains only a licence and two subdirectories, each a complete module — so `drush en logging_alerts` fails, and you enable `emaillog` and/or `errorlog` instead. Both implement Drupal's logger channel interface (each has a `src/Logger` directory), register through their own `services.yml`, and expose a configuration form — `/admin/config/development/emaillog` and `/admin/config/development/errorlog` respectively — both gated by core's `administer site configuration` with no module-specific permission. Each ships a template for message formatting (`emaillog.html.twig`, `errorlog-format.html.twig`). The severity routing in emaillog is the useful part: critical and emergency messages can go to an on-call address while notices go nowhere, which turns the log into an alerting channel without a separate monitoring stack. Two operational cautions: log messages routinely contain user input, IP addresses and request details, so emailing them moves potentially sensitive data into inboxes and through a mail provider; and a site generating errors quickly can generate a matching volume of mail, so rate-limiting and severity thresholds are not optional. The release is **2.1.0-beta1**.

---

- Email critical errors to an on-call address.
- Send different severities to different recipients.
- Write Drupal logs to the web server error log.
- Aggregate Drupal logs with server logs.
- Alert on emergencies without a monitoring stack.
- Feed logs into an existing log shipper.
- Get notified when a site starts erroring.
- Route notices away from the alerting address.
- Reduce reliance on dblog for critical events.
- Keep logs after a database restore.
- Format alert emails with a template.
- Include logs in a centralised syslog pipeline.
- Detect a failing cron by email.
- Notify a developer of PHP errors.
- Support an out-of-hours escalation process.
- Watch for security-relevant log entries.
- Send logs to a ticketing address.
- Keep a durable record outside the database.
