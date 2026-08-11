<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
User login/registration integration with Atlassian Crowd.

---

Atlassian Crowd (crowd) provides user login/registration integration with Atlassian Crowd — so Drupal authenticates users against a Crowd server (Atlassian's identity/SSO service): on login the submitted credentials are validated against Crowd via its connector, and a matching Drupal user is provisioned with a random local password (external-authentication pattern via `externalauth`).

The Crowd application credentials are stored via a Key entity (`key` dependency, env-backed), never committed. Depends on `externalauth` and `key`; supports Drupal 9, 10, and 11.

---

- Authenticate against Atlassian Crowd.
- Validate credentials via Crowd.
- Provision Drupal users (external auth).
- Set a random local password.
- Use the `externalauth` pattern.
- Store Crowd credentials in a Key entity.
- Never commit credentials.
- Depend on `externalauth` and `key`.
- Support Drupal 9, 10, and 11.
- Configure the Crowd connection.
- Handle SSO login.
- Integrate Crowd
- Support Drupal.
- Support Drupal.
- Support Drupal.
