<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Symfony Mailer Graph API Transport sends Drupal's mail through the **Microsoft Graph API** rather than SMTP — the route required when an organisation's Microsoft 365 tenant has disabled SMTP authentication.

---

Microsoft has been progressively disabling basic authentication for SMTP in Microsoft 365, which breaks the standard "point Drupal at smtp.office365.com with a username and password" setup that many organisations relied on. The supported alternative is the Graph API's sendMail endpoint with OAuth application credentials. This module makes that available as a Symfony Mailer **transport plugin** — `src/Plugin` provides it, `vitrus/symfony-office-graph-mailer ~0.0.7` implements the protocol, and configuration happens through Symfony Mailer's own transport collection (`entity.mailer_transport.collection`) rather than a separate admin page. Dependencies are `symfony_mailer ^1.5` and core `^10.3 || ^11`. Two things to note in planning. The underlying library is at **0.0.x**, so its API surface is not yet stable — pin it. And the credentials are an Azure app registration's tenant id, client id and client secret, which is a genuine secret: it belongs in an environment variable per this repo's convention, and the app registration should be scoped to `Mail.Send` for a specific mailbox rather than tenant-wide, since the permission model is what stops a compromised Drupal site sending as anybody in the organisation.

---

- Send Drupal mail through Microsoft 365 without SMTP.
- Work around disabled SMTP basic authentication.
- Use OAuth application credentials for mail.
- Send from a shared mailbox.
- Meet a corporate policy requiring Graph API.
- Configure the transport in Symfony Mailer.
- Replace a broken Office 365 SMTP setup.
- Improve deliverability from a Microsoft tenant.
- Avoid storing a mailbox password in Drupal.
- Send transactional mail from an organisational address.
- Keep mail inside a Microsoft estate.
- Support conditional access policies.
- Send mail from a containerised deployment.
- Use tenant-managed identity for mail.
- Comply with a mail security baseline.
- Route notification mail through Graph.
- Support an intranet's mail requirements.
- Configure per-transport in Symfony Mailer.
