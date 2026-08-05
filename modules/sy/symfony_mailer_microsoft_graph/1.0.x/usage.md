<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Symfony Mailer Microsoft Graph sends Drupal's mail through Microsoft Graph rather than SMTP, for tenants where SMTP authentication has been disabled.

---

This is the second Graph transport in the campaign — `symfony_mailer_graphapi` was documented in wave 65 — and the two solve the same problem by different routes, which is worth knowing when both appear in a search. That one wraps `vitrus/symfony-office-graph-mailer`, a `0.0.x` community library; this one uses **`microsoft/microsoft-graph`** pinned at exactly **`2.7.0`**, Microsoft's own official SDK. The official SDK is the more conservative choice for something in the mail path, and the exact pin removes the risk of an SDK minor changing behaviour underneath — at the cost of needing a module release to move it. Configuration happens through Symfony Mailer's transport list, so there is no admin page of its own; the dependency is `symfony_mailer` and requirements are PHP 8.1+ with core `^10 || ^11`. The same operational advice applies as to any Graph transport: the credentials are an Azure app registration whose client secret is a live secret and belongs in an environment variable, and the app registration should be scoped to a specific mailbox with an application access policy rather than granted `Mail.Send` tenant-wide — otherwise a compromised Drupal site can send as anyone in the organisation.

---

- Send Drupal mail through Microsoft 365.
- Work around disabled SMTP authentication.
- Use Microsoft's official Graph SDK.
- Send from a shared mailbox.
- Authenticate mail with OAuth credentials.
- Meet a corporate mail policy.
- Improve deliverability from a Microsoft tenant.
- Avoid storing a mailbox password.
- Configure the transport in Symfony Mailer.
- Support conditional access policies.
- Send transactional mail from an org address.
- Replace a broken Office 365 SMTP setup.
- Send mail from a container.
- Route notifications through Graph.
- Keep mail inside a Microsoft estate.
- Pin the SDK version deliberately.
- Support an intranet's mail requirements.
- Comply with a mail security baseline.
