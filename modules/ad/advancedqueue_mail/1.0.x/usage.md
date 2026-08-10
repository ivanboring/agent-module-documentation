<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Advanced Queue Mail sends email notifications for Advanced Queue jobs.

---

Advanced Queue Mail **sends email notifications for Advanced Queue jobs** — emailing on queue job events
(e.g. success/failure) so operators are notified about background processing, with a Symfony Mailer submodule.
It depends on the Advanced Queue module, in the Mail package.

Use it to get notified about queue-job outcomes. It is a mail/operations feature. Security note: it sends
**automated email** — configure recipients to trusted operator addresses and keep templates from leaking
sensitive job data; as with any mailer, avoid it becoming a noise/relay source. It has no access-control role.
Configure the notification recipients and events.

---

- Email notifications for queue jobs.
- Notify on job success/failure.
- Alert operators to processing.
- Depend on the Advanced Queue module.
- Provide a Symfony Mailer submodule.
- Serve mail/operations.
- Send automated email.
- Send to trusted operator addresses.
- Keep templates from leaking job data.
- Have no access-control role.
- Configure recipients and events.
- Handle queue mail.
- Send notifications.
- Configure the mail.
- Notify operators.
- Handle the emails.
- Alert on jobs.
- Email outcomes.
- Avoid noise/relay.
- Provide queue notifications.
