<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
League OAuth Login provides OAuth login using the League OAuth2 client, with provider submodules (GitHub, GitLab).

---

League OAuth Login provides OAuth 2.0 single-sign-on login built on the League OAuth2 client — letting
users log in with an external OAuth provider (it ships `league_oauth_login_github` and `league_oauth_login_gitlab`
provider submodules, and is extensible to others). On login it uses External Authentication to map the OAuth
identity to a Drupal account. It depends on the samlauth-style externalauth flow, in the Custom package.

Use it for OAuth SSO login. **Security caveat for this version (2.0.8): the OAuth `state` (CSRF) check fails
open when the session has no stored state.** The callback controller stores an `oauth2state` when initiating
the flow and, on return, denies only when `!state` OR (`session has oauth2state` AND `state !== session
state`) — so if the user's session has **no** stored state (the normal case for someone merely browsing), a
callback carrying **any** `state` value passes the check and the module exchanges the request's `code` and
logs the browser in. An attacker who obtains a valid authorization code can lure a victim (fresh session) to
the callback and **force them into the attacker's account** (OAuth **login CSRF** / session-swap). Until
fixed upstream: be aware of this, restrict/monitor OAuth login, and prefer patching the callback to deny
whenever `state !== session_state` (including when the session state is empty) and to make the state
single-use. Store the OAuth client secret as a secret and use HTTPS. See the local security.md.

---

- Provide OAuth 2.0 SSO login.
- Use the League OAuth2 client.
- Ship GitHub/GitLab provider submodules.
- Map the OAuth identity to a Drupal account.
- KNOW the state (CSRF) check fails open when no session state is stored.
- Understand a fresh-session victim + any state passes the check.
- Know an attacker's code can force login CSRF (session-swap).
- Patch the callback to deny when state != session_state (incl. empty).
- Make the state single-use.
- Restrict/monitor OAuth login until fixed.
- Store the OAuth client secret as a secret.
- Use HTTPS.
- Configure the OAuth provider.
- Handle OAuth login.
- Map identities.
- Secure the callback.
- Handle SSO login.
- Configure providers.
- Guard against login CSRF.
- Log in via OAuth.
