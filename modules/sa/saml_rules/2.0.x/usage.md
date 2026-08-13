<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
SAML Rules lets administrators define rules that fire when a user authenticates via SAML (through the samlauth module), assigning roles, setting the email address, and copying SAML attributes into user profile fields.

---

The module provides an admin UI under `/admin/config/people/saml-rules` (all routes gated by `administer saml rules`) with two rule types: authentication rules (match a SAML attribute/value, then add roles or set the email) and user-field rules (map SAML attribute values, with optional conditions, into custom user fields using `[token]`-style placeholders). Rules are stored in config (`saml_rules.authentication_rules`, `saml_rules.user_field_rules`). An anonymous-login event subscriber can optionally force anonymous visitors to the login page when `require_auth` is set. The actual mapping runs in `hook_user_login()` (`saml_rules.module`), which reads the incoming SAML response and applies the configured authentication and user-field rules to the logging-in account.

**Security finding (report):** `saml_rules_user_login()` builds a OneLogin `Response` from `$_POST['SAMLResponse']` (saml_rules.module:73) and then reads its attributes and applies rules — calling `$user->set()`, `$user->setEmail()`, `$user->addRole()` and `$user->save()` (lines 124-153) — **without ever calling `$response->isValid()` or otherwise verifying the SAML signature**. Because attribute extraction in php-saml does not itself require signature validation, a forged/unsigned `SAMLResponse` posted alongside a login can drive role assignment (potential privilege escalation) and email changes on the authenticating account. This is unauthenticated/unverified SAML data reaching security-sensitive user mutations. Treat this as a serious issue when relying on the module. Typical setup is enabling samlauth, defining authentication and user-field rules, then testing with a real IdP.

---

- Assign Drupal roles when a SAML attribute matches a value
- Set a user's email from a SAML attribute on login
- Map SAML attributes into custom user profile fields
- Apply conditional user-field rules (equal / not-equal)
- Use `[attribute]` placeholders in field values
- Manage authentication rules in a matrix UI
- Manage user-field rules in a matrix UI
- Add, edit and delete rules from the admin UI
- Store rules in exportable configuration
- Force anonymous visitors to the login page (require_auth)
- Redirect users to a SAML account-management URL
- Restrict rule administration to `administer saml rules`
- React to SAML login events via hook_user_login
- Auto-populate profile fields for new SAML users
- Grant tiered roles based on IdP group attributes
- Keep user email in sync with the IdP
- Configure general settings for SAML Rules
- Integrate with the samlauth SP configuration
- Build role provisioning from SAML metadata
- Review and adjust attribute-to-field mappings
