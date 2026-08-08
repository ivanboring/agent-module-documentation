<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Amazon Cognito provides an integration with Amazon Cognito for user sign-in, mapping Cognito identities to Drupal accounts.

---

Amazon Cognito integrates Drupal user sign-in with AWS Amazon Cognito — letting users authenticate via
a Cognito user pool and mapping Cognito identities to Drupal accounts. It builds on the External
Authentication (externalauth) module, provides Drush commands and its own permissions, in the Authentication
package.

Use it to delegate authentication to Amazon Cognito. It is an external-authentication integration. Security
notes typical of SSO/IdP integrations: store the Cognito app **client secret** (and any AWS credentials) as
secrets, not in exported config; ensure the Cognito ID/access **tokens are validated** (signature, issuer,
audience, expiry) before trusting them; operate over HTTPS; and configure account creation/role mapping
carefully (decide whether Cognito users auto-create local accounts and what roles they get — a permissive
mapping over-grants). Building on `externalauth` means account linking follows that module's model. It has
no content-access role beyond authentication. Configure the Cognito user pool connection.

---

- Sign in via Amazon Cognito.
- Authenticate against a Cognito user pool.
- Map Cognito identities to accounts.
- Build on External Authentication.
- Provide Drush commands.
- Provide its own permissions.
- Store the Cognito client secret as a secret.
- Validate the Cognito tokens (sig/iss/aud/exp).
- Operate over HTTPS.
- Configure account creation/role mapping carefully.
- Avoid over-permissive role mapping.
- Have no content-access role beyond auth.
- Delegate authentication to Cognito.
- Link accounts via externalauth.
- Configure the user pool.
- Handle AWS credentials securely.
- Authenticate users.
- Configure Cognito.
- Map identities to Drupal.
- Integrate AWS Cognito.
