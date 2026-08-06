<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Eloqua API Auth Fallback (eloqua_api_auth_fallback) — agent index

Submodule of **eloqua_api_redux**. Authenticates with a **resource owner password credentials
grant** when the authorisation-code flow cannot run (headless, CI, no one to complete the
redirect). Version **2.1.0**. Core `^9 || ^10 || ^11`.

**State why it is a fallback.** The password grant is **deprecated in OAuth 2.1** and discouraged in
current security best-practice guidance: the client must hold the user's actual credentials rather
than a scoped token. That gives up everything OAuth is for — the credential never reaching the
client, revoking one integration without a password change, MFA remaining meaningful.

**If it must be used:** a dedicated service account (not a person's), scoped to the minimum,
credentials in environment variables rather than config, and treated as something to move off.