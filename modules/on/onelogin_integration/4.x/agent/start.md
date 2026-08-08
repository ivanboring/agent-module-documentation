<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# OneLogin Integration (onelogin_integration) — agent index

**SAML SSO** against OneLogin / any SAML IdP via the official **`onelogin/php-saml`** v3 toolkit.
Version **4.0.0**.

**Verified correct:** the auth factory **caches the Auth instance**, so `processResponse()` then
`getErrors()` (both via `createFromSettings()`) use the SAME validated object — errors are checked on
the validated instance and login only proceeds with none. (Not the fresh-object bypass it
superficially looks like.)

**Security is the config:** `strict`, `wantAssertionsSigned`, `wantMessagesSigned` are
admin-configurable and **must be enabled** (an IdP not requiring signed assertions accepts forgeable
ones — the classic SAML hole). Note `relaxDestinationValidation` is **hardcoded TRUE**. Supply the
correct IdP cert.