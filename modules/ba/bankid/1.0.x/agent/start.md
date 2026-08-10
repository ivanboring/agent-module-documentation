<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# BankID — agent index

**BankID.com (Swedish national e-ID) authentication** for Drupal. Depends on `key`, `externalauth`. Version
**1.0.14**. Core `^10||^11`.

Authentication — maps the BankID identity via **ExternalAuth** (trusted) and stores API **credentials via the Key
module**; server-side `collect(orderRef)` returns the verified personalNumber. Verify: secure the BankID **client
certificate**, **bind the order to the initiating session** (no orderRef hijack), HTTPS. Layers on core auth.
