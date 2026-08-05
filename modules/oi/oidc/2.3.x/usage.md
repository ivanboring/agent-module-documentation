<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
OpenID Connect Client makes Drupal a relying party in an OpenID Connect flow, so users authenticate against an external identity provider — Keycloak, Entra ID, Okta, Auth0, Google — instead of against Drupal's own user table.

---

Any organisation with more than a handful of internal systems runs an identity provider, and the expectation is that Drupal joins it rather than keeping a separate password. OIDC is the current standard for that: an OAuth 2.0 flow with an identity layer, replacing SAML in most new deployments because it is lighter to configure and better suited to APIs and mobile clients. This module implements the client side, depending on `externalauth` — the shared contrib service that maps a remote identifier to a local Drupal account, so the same account-linking semantics apply here as in the SAML and CAS modules. Version **2.3.0** on core `^10 || ^11`, with `administer oidc` correctly marked `restrict access: true`, and login routes scoped per realm (`/oidc/login/{realm}`) so more than one provider can be configured. A **PHP requirement worth knowing before you plan the deployment**: the 2.3.0 dependency chain pulls `sop/jwx`, which needs the **`gmp` extension** — a stock PHP image often lacks it, and the failure appears at `composer require` time rather than as a Drupal error. Beyond that, the questions are the usual SSO ones and they are the ones that decide the project: what happens to **existing local accounts** with matching email addresses, how **roles** are derived from provider claims, and whether local password login stays enabled as a fallback or is closed off entirely.

---

- Log in with a corporate identity provider.
- Authenticate against Keycloak.
- Use Entra ID for staff login.
- Add single sign-on to an intranet.
- Remove separate Drupal passwords.
- Map provider claims to Drupal roles.
- Support several identity providers.
- Integrate with Okta.
- Meet a single-sign-on policy.
- Link existing accounts to an IdP.
- Support university federated login.
- Centralise account deprovisioning.
- Reduce password-reset support load.
- Authenticate customers via a social IdP.
- Add SSO alongside local login.
- Support a multi-tenant login setup.
- Log out through the provider.
- Replace an ageing SAML integration.
