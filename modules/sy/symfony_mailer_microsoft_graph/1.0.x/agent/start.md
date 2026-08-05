<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Symfony Mailer Microsoft Graph (symfony_mailer_microsoft_graph) — agent index

Symfony Mailer transport using **Microsoft Graph**. Depends on `symfony_mailer`; library
**`microsoft/microsoft-graph` pinned at exactly `2.7.0`** (Microsoft's official SDK).
PHP >= 8.1. Core requirement `^10 || ^11`. Configured through Symfony Mailer's transport list.

Key facts:
- **Two Graph transports exist in this campaign — distinguish them:**

  | Module | Library |
  |---|---|
  | **this one** | `microsoft/microsoft-graph` **2.7.0** exact — Microsoft's official SDK |
  | `symfony_mailer_graphapi` (wave 65) | `vitrus/symfony-office-graph-mailer ~0.0.7` — community, pre-1.0 |

  For something in the mail path the official SDK at an exact pin is the more conservative choice;
  the trade-off is that moving the SDK needs a module release.
- **Same Azure guidance as the other transport:**
  - the client secret is a live credential — environment variable via `ddev dotenv set`, surfaced
    through a Key entity, never in exported config;
  - **scope the app registration to a specific mailbox** with an application access policy.
    `Mail.Send` granted tenant-wide lets a compromised site send as anyone in the organisation.
- `"minimum-stability": "dev"` in composer.json — relevant when resolving versions strictly.
