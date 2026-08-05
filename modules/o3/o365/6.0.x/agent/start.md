<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Microsoft 365 Connector (o365) — agent index

Microsoft 365 / Entra ID authentication and Microsoft Graph access. Requires contrib
`oauth2_client` and `externalauth`. Config UI `/admin/config/system/o365/settings`
(`configure: o365.settings_form`). Installed release **6.0.0-beta6**.

Key facts:
- Config entity **`o365_connector`** (`Entity/O365Connector.php`, interface
  `O365ConnectorInterface`, access handler `O365ConnectorAccessControlHandler`) — one per
  Microsoft app registration.
- Services/classes: `AuthenticationService` (+ interface) for sign-in, **`GraphService`** for
  Microsoft Graph calls, `RolesService` for group→role mapping, `PersonaRenderService` for person
  cards, `HelperService`, `ConstantsService`, `O365LoggerService` (+ interface) for the module's
  log channel.
- Block bases: `Block\O365BlockBase` and **`Block\O365UncachedBlockBase`** — use the uncached base
  for anything rendering per-user Graph data, otherwise one user's Microsoft data can be cached
  and served to another.
- Routes/permissions:

  | Route | Permission |
  |---|---|
  | `o365.settings_form` (`/admin/config/system/o365/settings`) | `access o365 settings page` |
  | `/admin/reports/o365-auth-scopes` | (report of requested scopes) |
  | debugger page | `access o365 debugger page` |

  Plus `administer o365 connectors` (**restrict access**), `access o365 connectors`,
  `create o365 connector` and the rest of the connector CRUD set.
- `o365.post_update.php` carries upgrade steps — run `drush updatedb` after upgrading.

Credentials: the OAuth client secret belongs in `oauth2_client`'s configuration; follow this
repo's convention of sourcing it from an environment variable via a Key entity rather than
committing it.

```bash
drush en oauth2_client externalauth o365 -y
drush cget o365.settings
drush role:perm:add site_admin 'access o365 settings page'
```
