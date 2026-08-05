<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Microsoft Entra ID SSO Login lets users sign in to Drupal with their Microsoft Entra ID (formerly Azure AD) account — the common requirement for an intranet or any site backed by a Microsoft 365 tenant.

---

The flow is standard OAuth/OIDC: `/user/login/entra-id` redirects the visitor to Microsoft, and a callback route receives them back with a code that is exchanged for tokens and matched to a Drupal account. The redirect route is declared `_access: "TRUE"` with an explanatory comment — necessarily so, because the person starting a login is by definition not yet authenticated — and `no_cache: TRUE`, which is also correct, since a cached redirect would break the per-session state handling. A settings form at `/admin/config/services/entra-id/settings` holds the tenant, client ID and client secret, gated by `administer site configuration` (the module also declares its own `administer social_auth_entra_id settings` permission, though the routing uses core's). Two things matter more than anything else on a module of this kind, and both should be verified rather than assumed on any deployment: that the OAuth **`state` parameter is generated per session and checked on return** — the control that prevents login-CSRF, and the exact defect that produced an existing danger-4 finding against `oauth_login_oauth2` in this collection — and that the **client secret** is not committed in exported configuration but sourced from an environment variable, per this repo's convention. Requirements are core `user` and core `^9 || ^10 || ^11`.

---

- Let staff sign in with their Microsoft 365 account.
- Add SSO to a Drupal intranet.
- Remove separate Drupal passwords for employees.
- Meet a policy requiring corporate identity.
- Map Entra ID users to Drupal accounts.
- Provision accounts on first sign-in.
- Reduce password-reset support load.
- Enforce MFA at the identity provider.
- Support a tenant-restricted login.
- Centralise account deprovisioning in Entra ID.
- Provide a "Sign in with Microsoft" button.
- Keep local accounts alongside SSO.
- Support contractors via guest accounts.
- Audit sign-ins centrally.
- Comply with a corporate SSO mandate.
- Simplify onboarding for new staff.
- Reduce credential reuse risk.
- Integrate a site with a Microsoft-centric estate.
