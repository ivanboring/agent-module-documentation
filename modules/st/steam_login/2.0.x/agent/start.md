<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Steam Login (steam_login) — agent index

**Authenticates users through Steam's OpenID and creates/links a Drupal account keyed by Steam64 ID.**

- **Version:** 2.0.x · package steam · depends on `steam_api`
- **Core:** ^11
- **Route:** `steam_login.openid` → `/steam-auth`, requirement `_permission: 'access content'` (effectively anonymous)
- **Block:** `steam_openid` (official Steam button; logout/account links when authenticated)
- **Service:** `steam_login.openid_provider` (`OpenIdProvider`) builds the OpenID URL and handles user create/login
- **Fields added:** `field_steam64id`, `field_steam_username`
- **Setup:** set Steam API key (`steam_api.settings`); allow visitor registration with email verification off

**Security:** the callback processes Steam's `id_res` response by reading `openid_identity` from the request and validating only its *format* with a regex — see `src/Controller/OpenIdAuth.php` and `src/Service/OpenIdProvider.php`. Route is gated only by `access content` (anonymous). A local **[../security.md](../security.md)** written by the security reviewer covers the authentication posture in detail; consult it before trusting this login.

See [configure/setup.md](configure/setup.md) and [../security.md](../security.md)
