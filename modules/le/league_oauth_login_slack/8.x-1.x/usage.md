<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
League OAuth Login Slack provides a Slack provider for League OAuth Login.

---

League OAuth Login Slack adds **Slack as an OAuth provider** for the League OAuth Login module — a plugin
(`Slack`) supplying the Slack OAuth2 provider config so users can log in with Slack. It depends on the
league_oauth_login base module, which owns the actual login flow.

Use it to offer Slack login on a League OAuth Login site. **Security note (inherited): this module is only the
Slack provider plugin — the login redirect/callback flow lives in the base `league_oauth_login` module, whose
OAuth `state` (CSRF) check fails open when the session has no stored state (an OAuth login-CSRF / session-swap
weakness).** That base-module finding applies to Slack logins too — see the `league_oauth_login` documentation/
security notes and apply that fix (deny whenever `state !== session_state`, including when the session state is
empty). Store the Slack **client secret** as a secret and use HTTPS. It adds no access-control logic of its
own.

---

- Add Slack as an OAuth provider.
- Supply the Slack OAuth2 provider config.
- Let users log in with Slack.
- Depend on league_oauth_login (owns the flow).
- KNOW the base login flow has a state fail-open finding.
- Apply the base module's state fix.
- Deny whenever state != session_state (incl. empty).
- See the league_oauth_login security notes.
- Store the Slack client secret as a secret.
- Use HTTPS.
- Add no access-control logic of its own.
- Configure the Slack OAuth app.
- Handle Slack login.
- Provide the Slack plugin.
- Configure OAuth.
- Log in via Slack.
- Handle the provider.
- Secure the callback (base module).
- Guard the OAuth flow.
- Provide Slack login.
