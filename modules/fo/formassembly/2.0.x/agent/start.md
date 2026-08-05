<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# FormAssembly (formassembly) — agent index

Renders **FormAssembly**-hosted forms inside Drupal as `fa_form` config entities. Depends on
`map_widget ^2.0`; requires PHP `ext-libxml` and `ext-json`. Core requirement `^10 || ^11`.

Key facts:
- **Entity routes are generated**, not declared: `FormAssemblyEntityHtmlRouteProvider` builds them.
  `formassembly.routing.yml` contains only the two OAuth endpoints — a comment in the file says so.
- OAuth flow, both gated by **`administer formassembly form entities`** (`restrict access: true`):

  | Route | Path |
  |---|---|
  | `fa_form.authorize` | `/admin/structure/fa_form/settings/authorize` |
  | `fa_form.authorize.store` | `/admin/structure/fa_form/settings/code` |

  Implemented via `fathershawn/oauth2-formassembly` + `src/ApiAuthorize.php`.
- **Form markup is fetched and re-parsed**, not iframed: `symfony/dom-crawler` +
  `symfony/css-selector` adapt the remote HTML (`src/ApiMarkup.php`). That is what preserves site
  styling, analytics and accessibility — and it also means an upstream markup change can break
  rendering, so pin and test on upgrade.
- Four permissions separate administering, editing, listing and viewing the form entities.
- OAuth tokens/credentials are secrets — keep them out of exported configuration per this repo's
  convention.
