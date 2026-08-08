<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Symfony Mailer Lite Microsoft sends emails using the Microsoft Graph API, as a transport for the Symfony Mailer Lite module.

---

Sites on Microsoft 365 can send mail through the Microsoft Graph API rather than SMTP. Symfony Mailer Lite Microsoft is a Graph API transport for Symfony Mailer Lite. It needs Microsoft Graph API credentials — an OAuth client ID/secret or certificate — which are sensitive credentials to keep out of plain config (a Key entity / environment); Graph mail-send permissions can be broad, so scope the app registration minimally. It slots into the mailer as a transport. Protect the credentials and scope them tightly.

---

- Send email via Microsoft Graph.
- Use M365 for mail.
- Add a Graph API transport.
- Send mail without SMTP.
- Configure Graph credentials.
- Keep the OAuth secret secure.
- Scope the app minimally.
- Send transactional email.
- Use Symfony Mailer Lite.
- Protect the credentials.
- Enable when needed.
- Keep disabled otherwise.
- Restrict administration.
- Confirm on your site.
- Test before production.
- Review configuration.
- Pair with related modules.
- Verify theme fit.
- Match your use case.
- Confirm compatibility.
- Use deliberately.
- Review after upgrades.