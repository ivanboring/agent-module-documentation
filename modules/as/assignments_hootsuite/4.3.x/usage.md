<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Assignments Hootsuite connects the Assignments module to Hootsuite via OAuth2.

---

Assignments Hootsuite extends the Assignments module with Hootsuite integration, letting assignment workflows post to or interact with Hootsuite-managed social accounts through Hootsuite's API. Authentication uses OAuth2 (via the oauth2_client module).

The Hootsuite API credentials are configured under `administer hootsuite api settings` and should be stored securely (env-backed). Because it posts to social accounts, restrict the settings permission to trusted operators. Depends on `assignments` and `oauth2_client`; supports Drupal 10 and 11.

---

- Integrate Assignments with Hootsuite.
- Post to Hootsuite-managed accounts.
- Authenticate via OAuth2.
- Use the oauth2_client module.
- Extend assignment workflows.
- Gate config with `administer hootsuite api settings`.
- Store API credentials securely.
- Restrict settings to trusted operators.
- Depend on `assignments`.
- Depend on `oauth2_client`.
- Support Drupal 10 and 11.
- Interact with social accounts.
- Connect Drupal to Hootsuite's API.
- Manage social posting from assignments.
- Keep secrets env-backed.
- Support social-media workflows.
- Configure the Hootsuite connection.
- Automate social posting.
