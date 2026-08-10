<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# LegalWeb Cloud — agent index

Integrates the **legalweb.io** cloud service (legal texts + consent popup from a subscription). Requires PHP
7.3. Provides permissions; `legalweb_cloud_enhancements` submodule. Version **2.0.2**. Core `^9||^10||^11`.

**SECURITY CAVEAT (danger 2):** `generateAssets()` writes the JS legalweb.io returns (`dppopupjs`) **verbatim**
to `public://…/legalweb_cloud.js` and loads it on **every non-admin page** → the provider has **arbitrary
script execution in all visitors' browsers** (unbounded supply-chain trust; TLS on, so not MITM; no PII
egress). Latent config-injection via `JSON.parse('$config')`. Treat legalweb.io as fully trusted; API guid in
plaintext config. See `security.md`.
