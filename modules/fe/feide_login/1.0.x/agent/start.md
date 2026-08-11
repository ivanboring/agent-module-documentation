<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Feide Login — agent index

**Feide OAuth SSO** (via ExternalAuth). Version **1.0.0-beta3**. Core `^9||^10||^11`.

**SECURITY (Danger 3): OAuth login-CSRF** — authorization request omits `state` and `/feide_redirect` does no state/CSRF check before login (see local security.md). Add `state` before production. Credentials via Key+env. Depends on `externalauth`, `key`.