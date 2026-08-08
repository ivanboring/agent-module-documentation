<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# simpleSAMLphp Custom Attributes (simplesamlphp_custom_attributes) — agent index

Maps **additional SAML attributes** → Drupal **user fields**, extending `simplesamlphp_auth`.
Version **2.0.2**. Core `^10 || ^11.3`. Depends on `simplesamlphp_auth`.

Configure attribute → field maps so IdP-provided data (department, title, phone) populates profile
fields on login. Keeps HR-authoritative data in the IdP. See [[simplesamlphp_auth]].