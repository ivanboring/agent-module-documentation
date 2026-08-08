<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
OneLogin Integration provides SAML single sign-on against OneLogin (or any SAML IdP) using the official onelogin/php-saml toolkit.

---

OneLogin is a SAML identity provider; OneLogin Integration lets Drupal authenticate users against it (or any SAML IdP) via the official `onelogin/php-saml` v3 library. Because SAML security lives in signature and assertion validation, this was reviewed closely, and it is correctly built. The module delegates all SAML processing to the php-saml toolkit, and — importantly — its authentication factory CACHES the Auth instance, so the flow `createFromSettings()->processResponse()` then `createFromSettings()->getErrors()` operates on the SAME object: the response is validated, its errors are checked on that validated instance, and the user is only logged in when there are no errors, reading the NameId/attributes from that same validated Auth. (A superficial read suggests the double call might check a fresh object and miss errors — verified it does not, because the instance is cached.) The security that remains is configuration: the toolkit's `strict`, `wantAssertionsSigned` and `wantMessagesSigned` settings are all admin-configurable, and they MUST be enabled for validation to be meaningful — an IdP that does not require signed assertions accepts forgeable ones, the classic SAML misconfiguration. Also note `relaxDestinationValidation` is hardcoded to TRUE, relaxing the Destination check. So: enable strict mode and want-assertions/messages-signed, supply the correct IdP certificate, and the module's validation (via php-saml) is sound.

---

- Add SAML SSO via OneLogin.
- Authenticate against a SAML IdP.
- Use the php-saml toolkit.
- Map SAML attributes to accounts.
- Enable strict mode.
- Require signed assertions.
- Require signed messages.
- Supply the IdP certificate.
- Verify signature validation.
- Avoid accepting unsigned assertions.
- Configure the SP entity ID.
- Provision users from SAML.
- Note relaxDestinationValidation is on.
- Confirm the security settings.
- Integrate enterprise SSO.
- Trust the cached Auth flow.
- Enable when needed.
- Keep disabled otherwise.
- Restrict administration.
- Confirm on your site.
- Test before production.
- Review configuration.