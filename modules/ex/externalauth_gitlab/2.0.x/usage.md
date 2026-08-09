<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
External Auth GitLab authenticates via OAuth and a running GitLab instance.

---

External Auth GitLab provides **OAuth 2.0 login via a GitLab instance** — users authenticate against your
(or gitlab.com's) GitLab, and the module maps the identity to a Drupal account via External Authentication. It
depends on the externalauth module, provides its own permissions, in the Custom package.

Use it for GitLab-backed SSO login. It touches authentication, and its OAuth flow is **implemented correctly**:
the callback stores the OAuth `state` in the **private tempstore** at initiation and, on return, denies when
`!state || $state !== stored_state` — a **strict comparison with no fail-open guard** (contrast with modules
whose state check is skipped when no state is stored), so it properly mitigates OAuth **login CSRF** (verified
by reading `LoginController`). Security notes: store the GitLab **client secret** as a secret, use **HTTPS**,
and point it at a **trusted** GitLab instance. It grants access via its externalauth mapping/permissions.
Configure the GitLab OAuth application.

---

- Provide OAuth login via GitLab.
- Map the GitLab identity to a Drupal account.
- Depend on externalauth.
- Store the OAuth state in private tempstore.
- Deny on !state or strict state mismatch.
- Use a correct (no fail-open) state check.
- Mitigate OAuth login CSRF (verified).
- Store the client secret as a secret.
- Use HTTPS + a trusted GitLab.
- Provide its own permissions.
- Grant access via externalauth mapping.
- Configure the OAuth application.
- Handle GitLab login.
- Authenticate via GitLab.
- Configure OAuth.
- Map identities.
- Handle SSO.
- Log in via GitLab.
- Secure the callback.
- Provide GitLab SSO.
