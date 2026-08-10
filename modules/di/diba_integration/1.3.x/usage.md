<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Diba Integration provides module integration with the Diputació de Barcelona.

---

Diba Integration is an **integration/setup meta-module for the Diputació de Barcelona (Diba)** platform —
bundling and configuring a standard set of modules (admin toolbar, anti-spam like Antibot/Honeypot, backup,
masquerade, pathauto, role delegation, sitemap, a SAML submodule, etc.) to align a site with Diba's conventions,
with `diba_integration_cogo/extra/saml/vus` submodules. It is in the diba package.

Use it on sites targeting the Diba platform. It is an integration/distribution helper. Security note: because it
pulls in privileged modules — notably **Masquerade** (user impersonation) and a **SAML** auth submodule — review
and lock down those (restrict masquerade to trusted admins; configure SAML with verified metadata/certificates
and secrets stored securely), and treat any bundled credentials as secrets. It layers on those modules' own
access controls rather than adding its own. Configure the Diba integration for your site.

---

- Set up the Diba platform integration.
- Bundle standard modules + config.
- Align with Diba conventions.
- Include admin toolbar/anti-spam/backup/etc.
- Provide cogo/extra/saml/vus submodules.
- Serve Diba-targeting sites.
- PULL in privileged modules (Masquerade, SAML).
- Restrict masquerade to trusted admins.
- Configure SAML with verified metadata/certs + secure secrets.
- Treat bundled credentials as secrets.
- Layer on the bundled modules' access controls.
- Configure the integration.
- Handle Diba integration.
- Set up Diba.
- Configure the platform.
- Bundle modules.
- Handle the integration.
- Align config.
- Lock down privileged modules.
- Provide Diba integration.
