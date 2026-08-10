<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
OpenID Connect OSP Client provides a pluggable OpenID Connect client for CILogon and Globus.

---

This module **provides OpenID Connect client plugins for CILogon and Globus** (branded "One Science Place /
OSP") — letting users authenticate via those research/identity federations, with support for Globus transfer
tokens. It is built as plugins **on top of the `openid_connect` contrib module** (a hard dependency), in the User
authentication package.

Use it to add CILogon/Globus login. It is an **authentication** feature, and importantly it delegates the
OpenID Connect protocol mechanics to the trusted **openid_connect** module: the OAuth **`state` parameter /
CSRF (login-CSRF) protection, token exchange and user mapping are handled by openid_connect**, not
reimplemented here — this module supplies the provider endpoints/claims and some custom session/logout behavior
(it stores Globus transfer tokens under a custom session key and adjusts `/user/logout` routing to end only the
local session by default). Security essentials: store the **OAuth client ID/secret as secrets** (env/Key), serve
over HTTPS, and keep openid_connect updated (its state handling is your login-CSRF defense). If your build uses
the transfer-token support, treat those tokens as sensitive credentials. Configure the client credentials and
endpoints.

---

- Authenticate via CILogon/Globus (OSP).
- Provide OpenID Connect client plugins.
- Support Globus transfer tokens.
- Depend on the openid_connect module.
- Delegate protocol mechanics to openid_connect.
- Rely on openid_connect for state/CSRF + token exchange.
- Supply provider endpoints/claims + custom session/logout.
- Store the OAuth client ID/secret as secrets (env/Key).
- Serve over HTTPS + keep openid_connect updated.
- Treat transfer tokens as sensitive credentials.
- Configure the client credentials and endpoints.
- Adjust /user/logout to end only the local session.
- Handle federated login.
- Authenticate users.
- Configure the client.
- Log users in.
- Map identities.
- Handle OIDC.
- Exchange tokens.
- Provide CILogon/Globus OIDC login.
