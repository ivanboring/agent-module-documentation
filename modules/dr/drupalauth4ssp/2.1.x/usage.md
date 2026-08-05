<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
DrupalAuth for SimpleSAMLphp turns a Drupal site into the login experience for a SimpleSAMLphp **Identity Provider** — users authenticate against Drupal, and SimpleSAMLphp issues assertions to the service providers that trust it.

---

The direction of travel is the point here, and it is the opposite of what most SAML modules do. `simplesamlphp_auth` makes Drupal a *service provider* — users log in elsewhere and arrive authenticated. This module makes Drupal the *identity provider's* front end: SimpleSAMLphp runs alongside the site, and when a service provider needs a user authenticated, the user is sent to Drupal's login form, Drupal validates them, and the shared `drupalauth` SimpleSAMLphp module reads that session back. Hence the composer requirement on `drupalauth/simplesamlphp-module-drupalauth ~2.10||~2.11` — a SimpleSAMLphp module, not a Drupal one, installed into the SimpleSAMLphp tree by the `simplesamlphp/composer-xmlprovider-installer` plugin. The Drupal side is compact: a settings form at `/admin/config/people/drupalauth4ssp` behind the `administer drupalauth4ssp configuration` permission (marked `restrict access: true`), a `SspHandler` service, an event subscriber, and a `/drupalauth4ssp/redirect` route requiring `_user_is_logged_in` that returns the user to the originating service provider. The project suggests pairing it with TFA, which is sound advice — an IdP concentrates risk, since compromising this one login compromises every service that trusts it.

---

- Use Drupal as the login UI for a SimpleSAMLphp identity provider.
- Give several applications one shared sign-on backed by Drupal accounts.
- Federate a Drupal site's users to external service providers.
- Keep user management in Drupal while issuing SAML assertions.
- Return a user to the right service provider after login.
- Restrict IdP configuration to a small set of administrators.
- Add two-factor authentication to an identity provider.
- Replace per-application account stores with one Drupal directory.
- Present a branded login page to all federated applications.
- Integrate a legacy SAML service provider with Drupal accounts.
- Provide SSO across a university or agency estate.
- Reuse Drupal roles as the basis for SAML attributes.
- Audit which service providers rely on the Drupal login.
- Run Drupal as IdP and another system as SP.
- Terminate SSO sessions from Drupal.
- Meet a requirement for SAML 2.0 without a commercial IdP.
- Migrate an existing SimpleSAMLphp IdP onto Drupal's login form.
- Give partner organisations access using site accounts.
- Keep the SimpleSAMLphp installation in sync via composer.
