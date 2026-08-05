<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# OpenID Connect Client (oidc) — agent index

Makes Drupal an **OIDC relying party** — users authenticate against an external identity provider
(Keycloak, Entra ID, Okta, Auth0, Google). Depends on **`externalauth`**, the shared contrib
service that maps a remote identifier to a local account — same account-linking semantics as the
SAML and CAS modules. Version **2.3.0**. Core requirement `^10 || ^11`.
`administer oidc` is `restrict access: true`.

Routes are **per realm** (`/oidc/login/{realm}`, constrained to `^[a-z0-9_:-]+$`), so several
providers can coexist. `no_cache: true` on the auth routes.

**Installation gotcha, hit in this campaign:** the 2.3.0 chain pulls `sop/jwx` →
`sop/crypto-types`, which requires the **PHP `gmp` extension**. Without it `composer require`
fails with "ext-gmp is missing from your system" — a container/image problem, not a module
problem. In DDEV: `ddev config --webimage-extra-packages='php${DDEV_PHP_VERSION}-gmp'` then
`ddev restart`.

**The three questions that decide an SSO project** — settle them before configuring anything:
1. **Existing local accounts** with matching email addresses — linked, or refused?
2. **Role derivation** from provider claims — who is an administrator, and what happens when the
   claim changes?
3. **Local password login** — kept as a fallback (and therefore still an attack surface) or
   closed off entirely?
