<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
AWS Manager centralizes AWS credential/client management for Drupal, including S3.

---

AWS Manager manages AWS credentials and clients with S3 access — providing a central place to configure AWS credentials and instantiate AWS SDK clients (with S3 and organization-account support), so other modules/code can use AWS services through a managed, consistent credential setup.

AWS credentials are sensitive and must be stored securely (env-backed / IAM roles), never committed. Access is gated by `access aws manager` — restrict to trusted roles. Supports Drupal 10, 11, and 12.

---

- Manage AWS credentials.
- Instantiate AWS SDK clients.
- Provide S3 access.
- Support organization accounts.
- Centralize AWS credential setup.
- Let modules use AWS services.
- Store credentials securely (env/IAM).
- Never commit credentials.
- Gate access with `access aws manager`.
- Restrict to trusted roles.
- Support Drupal 10, 11, and 12.
- Configure AWS.
- Handle AWS clients
- Keep credentials secure
- Support cloud integration.
- Manage S3.
- Provide AWS access.
- Configure credentials
