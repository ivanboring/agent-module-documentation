<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
An access policy granting permissions from settings.php-defined external roles.

---

External Roles implements an access policy that assigns permissions to users based on their external roles — using core's Access Policy API to grant permissions according to a role→permissions mapping.

Security note: the role→permissions definition is configured in **settings.php** (`$settings['external_roles']`), i.e. server-side and admin-controlled (not user-editable config), so the grants can't be tampered with through the site UI — a deliberately safe design for driving permissions from an external identity source. Depends on core `user`; supports Drupal 10.3+ and 11.

---

- Grant permissions from external roles.
- Use core's Access Policy API.
- Map roles to permissions.
- Define the mapping in settings.php.
- Keep grants server-side/admin-controlled.
- Prevent UI tampering of grants.
- Drive permissions from an identity source.
- Depend on core `user`.
- Support Drupal 10.3+ and 11.
- Configure in settings.php.
- Aid SSO/external auth.
- Handle external roles
- Support Drupal.
- Support Drupal.
- Support Drupal.
