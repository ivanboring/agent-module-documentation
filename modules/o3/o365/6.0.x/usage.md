<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Microsoft 365 Connector authenticates Drupal users against Microsoft 365 / Entra ID and pulls data from the Microsoft Graph API, with connector entities describing each app registration, role mapping, and blocks for rendering Microsoft content.

---

The module builds on `oauth2_client` for the OAuth flow and `externalauth` for mapping Microsoft identities onto Drupal accounts, so it does not reinvent either. An **`o365_connector`** config entity describes a connection — client credentials, scopes and behaviour — with its own access control handler, and a settings form at `/admin/config/system/o365/settings`. `AuthenticationService` (behind `AuthenticationServiceInterface`) drives sign-in, `GraphService` wraps calls to Microsoft Graph, `RolesService` maps Microsoft group membership onto Drupal roles, `PersonaRenderService` renders person cards, and `O365LoggerService` gives the module its own logging channel. Two block base classes (`O365BlockBase` and `O365UncachedBlockBase`) let Microsoft-backed blocks be written with the right caching behaviour — the "uncached" variant exists because Graph data is per-user and must not be shared between visitors. A report at `/admin/reports/o365-auth-scopes` lists the authorization scopes in play, and a debugger page (behind its own permission) helps diagnose failed connections. Permissions are granular: separate ones for the settings page, the debugger page, and the restricted `administer o365 connectors` alongside access/create permissions for connector entities. The installed release is a beta.

---

- Let staff sign in to Drupal with their Microsoft 365 account.
- Map Entra ID group membership to Drupal roles.
- Render a person card from Microsoft Graph.
- Show a user's Microsoft profile data in a block.
- Connect several Microsoft app registrations via connector entities.
- Restrict access to the connector configuration.
- Diagnose OAuth problems on a dedicated debugger page.
- Review which authorization scopes are requested.
- Provision Drupal accounts on first Microsoft sign-in.
- Keep Microsoft identity mapping in externalauth's standard tables.
- Pull calendar or directory data from Graph into Drupal.
- Show organisation charts sourced from Microsoft 365.
- Cache Graph-backed blocks correctly per user.
- Log connector activity to a dedicated channel.
- Support single sign-on for an intranet.
- Grant editors access to the settings page without full admin.
- Provide different connectors for staff and student tenants.
- Migrate from a legacy ADFS integration.
- Reuse the OAuth2 Client configuration model.
- Audit which roles are derived from Microsoft groups.
