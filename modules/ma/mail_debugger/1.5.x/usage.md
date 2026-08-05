<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Mail Debugger sends a test email from the site so a developer can confirm that mail actually leaves — the fastest way to tell a broken SMTP configuration from a broken template.

---

"The site isn't sending email" has several possible causes — transport misconfiguration, a mail module intercepting messages, DNS or SPF problems, a template throwing — and separating them means sending something minimal and watching what happens. This module provides that: a form at `/admin/config/development/mail_debugger` taking a recipient, subject and body, and a second at `.../mail_debugger/user` that sends to a chosen site user instead of a free-text address, exercising the account-mail path. Both go through Drupal's mail manager, so whatever transport and alterations the site has configured are in play — which is exactly the point. The last message is remembered between visits. There are no dependencies beyond core and the range is a wide `^8 || ^9 || ^10 || ^11`. One thing to fix locally before using it anywhere but a development site: both forms are gated by `access mail_debugger`, and that permission is **not** marked `restrict access: true`, even though the first form sends arbitrary content to an arbitrary address using the site's own mail identity. The local security notes cover why that matters.

---

- Check whether the site can send email at all.
- Test an SMTP configuration after changing it.
- Separate a transport problem from a template problem.
- Send a test message to a specific address.
- Exercise the account-mail path for a chosen user.
- Verify mail after a server migration.
- Confirm a mail-catching tool is receiving.
- Check SPF or DKIM alignment with a real send.
- Test mail from a staging environment.
- Reproduce a delivery failure.
- Confirm a mail module is intercepting correctly.
- Check formatting of an HTML mail template.
- Verify mail works before enabling notifications.
- Diagnose a bounced message.
- Test mail from a container without shell access.
- Confirm a queue-based mailer is draining.
- Check mail after a DNS change.
- Validate a mail provider integration.
