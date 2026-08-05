<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Microsoft Entra ID SSO Login (social_auth_entra_id) — agent index

OAuth/OIDC login against **Microsoft Entra ID** (formerly Azure AD). Depends on core `user`.
Core requirement `^9 || ^10 || ^11`.
Settings at `/admin/config/services/entra-id/settings` (gated by core's
`administer site configuration`, although the module also declares
`administer social_auth_entra_id settings`).

Key facts:
- `social_auth_entra_id.redirect` at `/user/login/entra-id` is **`_access: "TRUE"`** with
  `no_cache: TRUE`. Both are correct and the module documents why in a routing comment: the
  person starting a login is not yet authenticated, and a cached redirect would break session
  state.
- **Two things to verify on any deployment** — neither was exercised in this campaign, and both
  are where modules of this shape fail:
  1. **The OAuth `state` parameter** must be generated per session and checked on the callback.
     That is what prevents login-CSRF (an attacker forcing a victim's browser to complete a login
     as the attacker's account). The existing `oauth_login_oauth2` finding in this collection is
     exactly this defect, rated danger 4.
  2. **The client secret** is entered on the settings form and therefore lands in
     `social_auth_entra_id.settings`. On this repo's convention it belongs in an environment
     variable (`ddev dotenv set`), surfaced through a Key entity, and excluded from config export.
- Surface: `src/Controller/SocialAuthEntraIdController.php`,
  `src/Form/SocialAuthEntraIdSettingsForm.php`, `src/Plugin/`, `config/install`, `config/schema`.
- Account matching/provisioning behaviour decides whether an Entra ID identity can take over an
  existing Drupal account by email — check that before enabling on a site with existing users.
