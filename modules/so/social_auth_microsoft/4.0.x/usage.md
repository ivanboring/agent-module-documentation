<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Social Auth Microsoft lets users sign in with a Microsoft account, as a provider plugin for the Social Auth framework.

---

Social Auth is the family that standardises "sign in with X" across providers: it owns the flow, the account matching and the user-mapping settings, and each provider contributes the OAuth specifics. This module supplies the Microsoft one, using `stevenmaguire/oauth2-microsoft ^2.0` and requiring `social_auth ^4.1` with PHP 8.1+ and core `^9.5 || ^10 || ^11`. The distinction from `social_auth_entra_id` (wave 61) is worth keeping straight, since both cover Microsoft accounts: this one goes through the Social Auth framework and targets Microsoft accounts generally, while that one is a standalone Entra ID integration aimed at a tenant. Which fits depends on whether the site already runs Social Auth for other providers and whether the requirement is consumer Microsoft accounts or a specific organisational tenant. Two things to verify on any OAuth login module, neither exercised in this campaign: that the **`state` parameter** is generated per session and checked on the callback — the control preventing login-CSRF, and the exact defect behind the existing `oauth_login_oauth2` finding in this collection — and that the **client secret** is sourced from an environment variable rather than exported configuration.

---

- Let users sign in with a Microsoft account.
- Add Microsoft to an existing Social Auth setup.
- Reduce password management for users.
- Offer several social login options.
- Map Microsoft identities to Drupal accounts.
- Provision accounts on first sign-in.
- Support a consumer Microsoft audience.
- Reuse Social Auth's account matching.
- Reduce registration friction.
- Offer familiar sign-in buttons.
- Support a mixed social login site.
- Authenticate without a Drupal password.
- Add a Microsoft button to the login form.
- Support an education audience.
- Standardise social login handling.
- Reduce password-reset support.
- Integrate with a Microsoft identity.
- Complement other Social Auth providers.
