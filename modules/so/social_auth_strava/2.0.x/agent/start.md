<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Social Auth Strava (social_auth_strava) — agent index

*Log in with Strava* provider for **Social Auth / Social API**. Version **2.0.3**, core `^9.3 || ^10`. Deps: `social_api`, `social_auth`.

**Flow:** Network plugin `StravaAuth` builds a `Strava\API\OAuth` client. Routes (anonymous, no_cache): `/user/login/strava` → `redirectToStrava()` (TrustedRedirectResponse to Strava); `/user/login/strava/callback` → `callback()` → `StravaAuthManager::authenticate()` exchanges `code` for token → `getUserInfo()` → `social_auth` `UserAuthenticator::authenticateUser(name,email,id,token,picture)`.

**Account matching:** Strava no longer returns email → `getUserInfo()` sets email `NULL`; matching is by Strava athlete id via Social Auth's mapping table (not email), so no email-collision takeover here.

**Security (see review):** `callback()` performs **no OAuth `state` verification** — `redirectToStrava()` doesn't store `getState()`, `callback()` doesn't check it → login-CSRF. Token exchange is server-side over the SDK's HTTPS client; TLS not disabled.

**Config:** `/admin/config/social-api/social-auth/strava` (*administer social api authentication*) — client id, secret, scopes.
