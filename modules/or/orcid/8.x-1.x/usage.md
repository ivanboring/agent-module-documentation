<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
ORCID allows account creation and login with ORCID OAuth2.

---

ORCID lets users **create an account and log in with ORCID** (OAuth2), and lets existing users connect their
ORCID iD to their account. It provides its own permissions, in the ORCID package.

**Security — do not deploy this unpatched (danger 3 finding).** Its OAuth callback (`OauthController::redirectPage()`,
route `/orcid/oauth`, `_access: 'TRUE'`) validates **no OAuth `state`** at all — it builds the authorization URL
with no stored state and, on return, exchanges `$_GET['code']` and logs in / links accounts with no CSRF check.
This enables **login-CSRF** (lure a victim to `/orcid/oauth?code=<attacker's ORCID code>` and log their browser
into the attacker's account) and, for a logged-in victim, **forced account-linking → takeover** (the
attacker-supplied ORCID is merged onto the victim's account; the attacker can then log in as the victim with their
own ORCID). Compounding problems in the same controller: on a username collision it returns
`serialize($new_user) . serialize($values)` into the page, **leaking the OAuth access/refresh tokens and user
data**; new accounts are created with an **empty email** and `pass = token`; tokens are stored **plaintext** in a
custom table; and one ORCID endpoint URL is `http://` (cleartext). Fix before use: generate + store an OAuth
`state` and reject callbacks that don't match; remove the `serialize()` debug output; store tokens via Key/
encryption; require a real email; use HTTPS for all ORCID URLs. It should be treated as vulnerable until patched.

---

- Log in / register with ORCID OAuth2.
- Connect an ORCID iD to an account.
- Provide its own permissions.
- HAVE an OAuth-state CSRF finding (danger 3).
- Validate NO OAuth state on the callback.
- Enable login-CSRF (log victim into attacker's account).
- Enable forced account-linking → takeover (logged-in victim).
- Leak access/refresh tokens via serialize() on collision.
- Create accounts with empty email + pass=token.
- Store tokens plaintext + use an http:// endpoint.
- Require a fix (state check, remove serialize, HTTPS) before use.
- Treat it as vulnerable until patched.
- Handle ORCID login.
- Authenticate via ORCID.
- Configure the OAuth app.
- Link accounts.
- Handle the integration.
- Log users in.
- Add state validation.
- Provide ORCID login (with a known auth-CSRF flaw).
