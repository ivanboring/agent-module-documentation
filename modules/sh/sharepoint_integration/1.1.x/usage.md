<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
SharePoint Integration provides functionality to establish a connection between Microsoft SharePoint and the Drupal site.

---

SharePoint Integration (by miniOrange) establishes a connection between Microsoft SharePoint and Drupal
— enabling SharePoint-based integration/SSO/content access from the Drupal site. It is configured at
`sharepoint_integration.connection` and provides its own permissions, in the miniOrange package.

Use it to connect Drupal to SharePoint. Security notes: store the SharePoint/Azure app credentials
(client ID/secret) as secrets and operate the connection over HTTPS. One caveat found in this version: the
module's **miniOrange support/trial-query helper** (`MOSupport::callService()`) makes its request with TLS
verification disabled (`'verify' => FALSE`) — this affects only the *support/feedback ping* to miniOrange
(which carries the admin's email + site/PHP version and a hardcoded shared miniOrange key, not your
SharePoint credentials or session), and the actual SharePoint connection path uses the standard Drupal HTTP
client normally. So the disabled-TLS issue is low-impact (a MITM on an admin's support submission could read
the admin email/site fingerprint and tamper the response), but it is worth being aware of; avoid submitting
the in-module support form over untrusted networks. Configure the SharePoint connection.

---

- Connect Drupal to SharePoint.
- Enable SharePoint integration/SSO.
- Configure at sharepoint_integration.connection.
- Provide its own permissions.
- Store SharePoint/Azure app credentials as secrets.
- Operate the connection over HTTPS.
- Know the SharePoint path uses standard TLS.
- Note the support helper disables TLS (verify => FALSE).
- Understand the support ping leaks only admin email/site fingerprint.
- Avoid submitting the support form over untrusted networks.
- Not expose SharePoint credentials via the support path.
- Have miniOrange support-query TLS caveat (low impact).
- Configure the connection.
- Handle credentials securely.
- Integrate SharePoint content.
- Connect to Microsoft SharePoint.
- Enable the connection.
- Configure SharePoint.
- Handle SharePoint SSO.
- Establish the connection.
