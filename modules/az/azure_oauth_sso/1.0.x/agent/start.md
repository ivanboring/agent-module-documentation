<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Azure OAuth Client SSO (azure_oauth_sso) — agent index

Microsoft **Entra ID (Azure AD)** login, implementing the authorization-code flow against
`login.microsoftonline.com` **directly** rather than through a shared OpenID Connect client. Field
and role mapping forms. Login route `/oauth/login` (`access content`, `no_cache: TRUE`).
Version **1.0.9**. Core requirement `^9 || ^10 || ^11`.

**Do not deploy this release as an authentication mechanism without reading the security notes.**

**Verified on a clean install:** the OAuth **`state` parameter is the hard-coded literal `12345`**
and is **never read on the callback**. The redirect to Microsoft carries the constant, and
`/oauth/login?code=<anything>` reaches the token exchange **anonymously with no `state` supplied**.
`state` exists to bind the authorization request to the callback so a callback the browser did not
initiate is refused — without it the flow is open to **login CSRF**, signing a victim in as the
**attacker's** identity so that everything they then enter lands in the attacker's account.

**Two further points:**
- **Identity is matched on the Graph `mail` value alone** — no `oid`/`sub` binding, no tenant check.
  The arrangement is only as safe as the Azure app being **single-tenant**, which the module neither
  enforces nor warns about.
- **Access and refresh tokens are stored in user entity fields** (`field_access_token`,
  `field_refresh_token`) — anything exporting all user fields exports **live credentials**.

**Prefer the `openid_connect` ecosystem** (see `oidc`, wave 71; `login_gov`, wave 78), which
implements the flow properly.
