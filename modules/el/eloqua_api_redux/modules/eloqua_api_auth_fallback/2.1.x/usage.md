<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Eloqua API Auth Fallback authenticates to Eloqua using a resource owner password credentials grant when the normal OAuth flow is not available.

---

The parent module uses an authorisation-code flow, which requires a human to complete a redirect. That is the right design and it does not fit every situation: a headless environment, a CI job, or an account where nobody can complete the browser step needs another way in. The resource owner password credentials grant is that other way — the client sends a username and password directly and receives a token.

**It is a fallback for a reason, and the reason belongs in any recommendation.** The password grant is deprecated in OAuth 2.1 and discouraged in the current security best-practice guidance, because it requires the client to hold the user's actual credentials rather than a scoped token. Everything that makes OAuth better than storing a password — the credential never reaching the client, the ability to revoke one integration without changing a password, MFA remaining meaningful — is given up.

So: **use it only where the authorisation-code flow genuinely cannot run**, use a dedicated service account rather than a person's credentials, scope that account to the minimum the integration needs, and store the credentials as environment variables rather than in configuration. And treat it as something to move off, not a permanent arrangement.

---

- Authenticate without a browser redirect.
- Connect from a headless environment.
- Authenticate an Eloqua integration in CI.
- Use a fallback when the OAuth flow cannot run.
- Use a dedicated service account.
- Scope the account to the minimum needed.
- Store credentials in environment variables.
- Keep credentials out of configuration.
- Understand why the password grant is discouraged.
- Recognise what OAuth protections are given up.
- Plan a move back to the authorisation-code flow.
- Rotate service account credentials.
- Audit which grant an integration uses.
- Document the fallback's justification.
- Document this component's conventions for the team.
- Review it during a component audit.
- Verify its behaviour after a theme change.
