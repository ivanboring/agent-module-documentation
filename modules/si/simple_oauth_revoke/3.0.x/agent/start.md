<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Simple OAuth Revoke (simple_oauth_revoke) — agent index

Adds the **RFC 7009 `/oauth/revoke`** endpoint to `simple_oauth`. POST only, `no_cache: TRUE`.
Version **3.0.0**. Core requirement `^10 || ^11`.

**The route is `_access: 'TRUE'`, with a comment saying RFC 7009 requires the endpoint to be
publicly accessible — and that is correct, not careless.** The caller is a client presenting a token
and its own credentials; authentication is **the endpoint's** job, not the router's. Same shape as
`webhook_receiver` (wave 77).

**Why revocation matters most when something has gone wrong:** without it a token stays valid until
expiry — logging out of a mobile app invalidates nothing, uninstalling leaves a working credential,
and a token found in a log cannot be turned off. Access tokens are often short-lived enough to
tolerate that. **Refresh tokens are not** — they exist to be long-lived, so a leaked one without
revocation is a **standing grant**.

RFC 7009 deliberately specifies **200 even for an unknown token**, so the endpoint cannot be used to
test whether a token exists.

**Three things to confirm on the specific site:**
1. **Client authentication** for confidential clients — otherwise anyone holding a token can revoke
   it (mostly self-harm, still a DoS against a client).
2. **Revoking a refresh token should revoke its access tokens** — revoking one and leaving the other
   is a partial logout that looks complete.
3. **Flood control** on an unauthenticated POST endpoint, regardless.
