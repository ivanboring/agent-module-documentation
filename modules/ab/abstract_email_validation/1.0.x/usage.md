<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Abstract API Email Validator checks email fields against Abstract's validation API.

---

Abstract API Email Validator integrates the Abstract API email-validation service into email fields — so submitted email addresses are validated (deliverability, disposable/role detection) against Abstract's API before acceptance, reducing invalid/disposable signups and improving data quality.

Each validation calls Abstract's API (cost + the email is sent to a third party — privacy); the API key should be stored securely (env-backed). Supports Drupal 9, 10, and 11.

---

- Validate email fields via Abstract API.
- Check deliverability.
- Detect disposable/role emails.
- Reduce invalid signups.
- Improve data quality.
- Call Abstract's API per validation.
- Send the email to a third party (privacy).
- Store the API key securely (env-backed).
- Support Drupal 9, 10, and 11.
- Incur API cost.
- Configure the validator.
- Apply to email fields.
- Block bad addresses
- Keep the key secure
- Integrate email validation.
- Validate on submit.
- Support form quality.
- Check emails
