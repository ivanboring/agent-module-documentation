<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Social Auth Microsoft (social_auth_microsoft) — agent index

Microsoft provider for the **Social Auth** framework. Depends on `social_auth ^4.1`; library
`stevenmaguire/oauth2-microsoft ^2.0`. PHP >= 8.1. Core requirement `^9.5 || ^10 || ^11`.
Settings at `social_auth_microsoft.settings_form`.

Key facts:
- **Distinguish from `social_auth_entra_id` (wave 61).** Both cover Microsoft sign-in:
  - **this** goes through the Social Auth framework, aimed at Microsoft accounts generally —
    right when the site already runs Social Auth for other providers;
  - **that** is a standalone Entra ID integration aimed at an organisational tenant.
- Social Auth owns the flow, account matching and user mapping; this contributes the OAuth
  specifics only. Debug matching behaviour in `social_auth`.
- **Two things to verify on any OAuth login module** (not exercised here):
  1. the **`state` parameter** must be per-session and checked on callback — this is what prevents
     login-CSRF, and it is the exact defect behind the `oauth_login_oauth2` finding in this
     collection;
  2. the **client secret** belongs in an environment variable surfaced through a Key entity, not
     in exported configuration.
