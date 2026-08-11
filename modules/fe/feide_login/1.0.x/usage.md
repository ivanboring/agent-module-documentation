<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Feide Login adds Feide OAuth single sign-on, mapping Feide users to Drupal accounts via ExternalAuth.

---

Feide Login lets users authenticate with Feide — the Norwegian federated identity provider for education and research — using an OAuth 2.0 authorization-code flow. On return it maps the Feide user (by email) to a Drupal account via the ExternalAuth module, optionally auto-registering new users.

SECURITY: the authorization request omits the OAuth `state` parameter and the `/feide_redirect` callback performs no state/CSRF validation before logging the browser in — an OAuth **login-CSRF** weakness (an attacker can force a victim's browser into the attacker's account). See the local security.md; add `state` generation and verification before production use. Client credentials are stored via the Key module (env-backed). Depends on `externalauth` and `key`; supports Drupal 9, 10, and 11.

---

- Log in with Feide OAuth.
- Use the authorization-code flow.
- Map Feide users to Drupal accounts.
- Use ExternalAuth for mapping.
- Optionally auto-register users.
- Store client credentials via Key.
- Keep credentials env-backed.
- Depend on `externalauth` and `key`.
- Support Drupal 9, 10, and 11.
- Target Norwegian education/research.
- OMIT the OAuth `state` parameter (weakness).
- Perform no state/CSRF check on callback.
- Be vulnerable to OAuth login-CSRF.
- Add `state` before production use.
- Key login on email.
- Provide federated SSO.
- Redirect to Feide to authenticate.
- Finalize login via ExternalAuth.
