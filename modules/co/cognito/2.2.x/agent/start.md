<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Amazon Cognito — agent index

Integrates Drupal user sign-in with **AWS Amazon Cognito** (authenticate via a Cognito user pool; map
identities to accounts). Built on `externalauth`; Drush commands; provides permissions. Version **2.2.0**.
Core `^10.1||^11`.

External-authentication. **Security:** store the Cognito client secret / AWS creds as **secrets**; ensure
Cognito tokens are validated (sig/iss/aud/exp); HTTPS; configure account-creation/role-mapping carefully
(permissive = over-grant). No content-access role beyond auth.
