<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Eloqua API Redux (eloqua_api_redux) — agent index

OAuth connection and API client for **Oracle Eloqua**. Configure at
`admin/config/services/eloqua_api_redux`; callback at `eloqua_api_redux/callback`.
Version **2.1.0**. Core `^9 || ^10 || ^11`. Submodule: `eloqua_api_auth_fallback`.

Both routes gated by `administer eloqua api settings` — correct for an admin-initiated OAuth flow.

Plumbing, not a feature: one client for several Eloqua-touching behaviours, so a site does not end
up with three copies of the secret.

**The credential grants access to contact data — personal data by any definition.** Check where it
is stored; keep that config object out of exports, and prefer a Key entity if supported. Confirm
the OAuth **`state` parameter is validated** on return — that is what binds the callback to the
request that began it.