<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Microsoft Graph API provides the connection and client layer for Microsoft Graph, so other modules can implement business logic against it.

---

Microsoft Graph is the single API surface over Microsoft 365 — users, groups, mail, calendars, files, Teams, directory data. Organisations running on Microsoft want their Drupal site to read from it: an intranet showing the staff directory, a site listing events from a shared calendar, a portal reflecting group membership from Entra ID.

This module is deliberately the plumbing rather than a feature. It holds the credentials, handles the token exchange and exposes a client; the business logic is left to whatever module needs it, which is the right split because no two organisations want the same thing from Graph.

**Credential handling is done correctly and worth citing** — `key:key` is a hard dependency, so the client secret is a Key entity rather than a value in configuration, and can therefore live in an environment variable and stay out of config exports.

**The permissions that matter are on the Microsoft side, not Drupal's**, and that is the thing to get right. A Graph app registration is granted scopes, and it is easy to grant more than the integration needs — `User.Read.All` and `Directory.Read.All` expose the whole organisation's directory to whatever holds the credential. Scope the registration to the minimum, prefer delegated over application permissions where the use case allows, and remember that a Drupal site holding an application-permission credential is a directory-read capability sitting on a web server.

The release is **2.0.0-beta2**.

---

- Read the staff directory from Microsoft 365.
- List events from a shared calendar.
- Reflect Entra ID group membership.
- Build an intranet on Microsoft data.
- Provide a Graph client to other modules.
- Store the client secret in a Key entity.
- Keep credentials out of config exports.
- Scope the app registration to the minimum.
- Prefer delegated over application permissions.
- Understand what Directory.Read.All exposes.
- Rotate the client secret.
- Handle token refresh.
- Plan a Microsoft 365 integration.
- Audit the Graph scopes a site holds.
- Evaluate a beta before production use.
