<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# OpenID Connect OSP Client (CILogon/Globus) — agent index

A **pluggable OpenID Connect client for CILogon / Globus** (One Science Place). Depends on `openid_connect`.
Version **1.0.0-beta4**. Core `^10||^11`.

Authentication — built **on openid_connect**, which handles the OAuth **`state`/CSRF, token exchange and user
mapping** (login-CSRF defense — keep it updated). This module adds provider endpoints/claims, Globus transfer-token
support (sensitive), and local-only logout. Store the **client ID/secret as secrets** (env/Key), HTTPS.
