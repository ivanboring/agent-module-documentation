<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Symfony Mailer Office 365 adds a Microsoft 365 transport to Symfony Mailer, so Drupal sends through an organisation's existing Microsoft tenancy.

---

Organisations standardised on Microsoft 365 usually require all mail to leave through it: it is where the audit trail, the retention policy, the data-residency commitment and the anti-abuse controls already live, and a site sending directly is outside all of them. The technical obstacle is that Microsoft has been steadily retiring **basic authentication** for SMTP — a username and password in a settings form no longer works on a modern tenancy — and the replacement is **OAuth 2.0**, with a registered application, a client secret or certificate, and delegated or application permissions granted by a tenant administrator. That is a different setup conversation from an SMTP host and port, and it usually involves someone other than the Drupal team. This module supplies the transport for **Symfony Mailer**, which is the direction Drupal mail is moving — core has been migrating away from its own mail system toward Symfony's, and the contrib `symfony_mailer` module is where that work is expressed — so the choice of base matters as much as the transport itself. Version **1.0.0-alpha5** on core `^10 || ^11`: an alpha, for the component that carries every password reset. Treat the client secret exactly as an API key — environment variable, Key entity, never in exported configuration — and remember that **secrets expire**: an Azure application client secret has a maximum lifetime, so put its expiry in a calendar, because the failure mode is that all site mail stops on a date nobody recorded.

---

- Send site mail through Microsoft 365.
- Meet an organisational mail policy.
- Replace retired basic authentication.
- Use OAuth for SMTP authentication.
- Keep mail inside a Microsoft tenancy.
- Satisfy a data-residency requirement.
- Send from an existing corporate mailbox.
- Keep an audit trail of outgoing mail.
- Avoid a separate mail provider contract.
- Use Symfony Mailer as the mail system.
- Send from an intranet site.
- Meet an IT department's requirement.
- Route mail through corporate anti-abuse controls.
- Send notifications from a shared mailbox.
- Support a public-sector mail policy.
- Replace an SMTP module that stopped working.
- Authenticate with a registered Azure app.
- Consolidate mail infrastructure.
