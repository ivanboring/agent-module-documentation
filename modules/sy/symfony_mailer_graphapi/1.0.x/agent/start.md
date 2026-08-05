<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Symfony Mailer Graph API Transport (symfony_mailer_graphapi) — agent index

Sends mail via the **Microsoft Graph API** instead of SMTP. Depends on `symfony_mailer ^1.5`;
protocol by `vitrus/symfony-office-graph-mailer ~0.0.7`. Core requirement `^10.3 || ^11`.
Configured through Symfony Mailer's transport collection
(`entity.mailer_transport.collection`) — no admin page of its own.

Key facts:
- **Why it exists:** Microsoft has been disabling SMTP basic authentication in Microsoft 365, which
  breaks the conventional `smtp.office365.com` + username/password setup. Graph's sendMail with
  OAuth app credentials is the supported replacement.
- **The underlying library is `0.0.x`** — pre-1.0, so its API is not stable. Pin
  `vitrus/symfony-office-graph-mailer` explicitly rather than letting `~0.0.7` float.
- Credentials are an Azure **app registration** (tenant id, client id, client secret). Two things
  follow:
  - the client secret is a live credential — environment variable via `ddev dotenv set`, surfaced
    through a Key entity, never in exported config;
  - **scope the app registration narrowly.** `Mail.Send` granted tenant-wide lets a compromised
    Drupal site send as anyone in the organisation; scope it to the specific mailbox
    (application access policy) instead.
- Whole module is `src/Plugin/` + `config/schema` + services — a transport plugin, nothing more.
