<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
LegalWeb Cloud provides integration for the legalweb.io cloud service.

---

LegalWeb Cloud integrates the **legalweb.io** cloud service — providing legal texts (imprint, privacy) and
a consent popup sourced from your legalweb.io subscription. It requires PHP 7.3, provides its own permissions,
ships a `legalweb_cloud_enhancements` submodule, in the Content package.

Use it to surface legalweb.io legal content/consent. **Security caveat (danger 2, reviewed): the module executes
JavaScript returned by the remote service as first-party code on every page.** `LWCManager::generateAssets()`
writes the JS legalweb.io returns (`dppopupjs`) **verbatim** to `public://legalweb_cloud/legalweb_cloud.js`,
which is then loaded as a library on **every non-admin page** — so whoever controls legalweb.io's response has
**arbitrary script execution in all visitors' browsers** (session/credential theft, defacement); it is an
unbounded provider-trust/supply-chain dependency (no SRI possible; refreshed by cron every 24h). TLS *is* on
(so not MITM), and no visitor PII is sent outbound — the exposure is trusting the provider's returned code.
There is also a latent JS-injection in how the remote config is interpolated (`JSON.parse('$config')` with an
unescaped single quote). Treat legalweb.io as a fully trusted party before enabling; ideally load vendor JS
from the vendor's own origin rather than as a first-party library. The API `guid` is stored in plaintext config
(minor). See the local security.md.

---

- Integrate the legalweb.io service.
- Provide legal texts + a consent popup.
- Require PHP 7.3.
- KNOW it executes remote-supplied JS on every page.
- Understand the provider gets script execution in all browsers.
- Treat legalweb.io as a fully trusted party.
- Know TLS is on (not a MITM issue).
- Know no visitor PII is sent outbound.
- Note the latent config-injection path.
- Prefer loading vendor JS from the vendor's origin.
- Store the API guid as a secret.
- Provide its own permissions.
- Handle legal content.
- Configure the service.
- Show a consent popup.
- Handle the integration.
- Trust the provider fully.
- Provide legal texts.
- Review the trust dependency.
- Provide legalweb.io integration.
