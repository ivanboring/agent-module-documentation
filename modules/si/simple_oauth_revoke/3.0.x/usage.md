<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Simple OAuth Revoke adds the `/oauth/revoke` endpoint that RFC 7009 defines, so a client can tell the server a token is no longer needed.

---

Revocation is the part of OAuth that is easy to skip and matters most when something has gone wrong. Without it, a token remains valid until it expires — so logging out of a mobile app does not invalidate anything, uninstalling it leaves a working credential behind, and a token discovered in a log or a crash report cannot be turned off. Access tokens are often short-lived enough that this is tolerable; **refresh tokens are not**, since they exist to be long-lived, and a leaked refresh token without revocation is a standing grant. RFC 7009 defines the endpoint precisely, including the deliberately unhelpful behaviour that it returns **200 even for an unknown token**, so that an attacker cannot use it to test whether a token exists. This module supplies it for `simple_oauth`, version **3.0.0** on core `^10 || ^11`. The route is **`_access: 'TRUE'` with a comment explaining that RFC 7009 requires the endpoint to be publicly accessible**, and that is correct rather than careless: the caller is a client presenting a token and its own credentials, and authentication is the endpoint's job rather than the router's — which is the same shape as `webhook_receiver` in wave 77. Three things to confirm on the specific site. **Client authentication** should be required for confidential clients, or anyone holding a token can revoke it — which is mostly self-harm and is still a denial-of-service against a client. **Revoking a refresh token should revoke its access tokens**, since revoking one and leaving the other is a partial logout that looks complete. And **flood control** belongs on an unauthenticated POST endpoint regardless.

---

- Revoke a token when a user logs out.
- Invalidate a refresh token.
- Support RFC 7009 revocation.
- Let a mobile app end its session.
- Revoke a leaked token.
- Support a security incident response.
- End a session from a client.
- Invalidate credentials on uninstall.
- Support proper OAuth logout.
- Revoke a token found in a log.
- Meet an OAuth conformance requirement.
- Support a decoupled app's sign out.
- Revoke tokens on password change.
- End access for a removed device.
- Support a token lifecycle policy.
- Revoke a partner integration's access.
- Invalidate a compromised client's token.
- Complete a simple_oauth deployment.
