<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Contact Terms Of Service Checkbox (contact_tos_checkbox) — agent index
**Adds a required consent checkbox to core Contact's site-wide feedback form.**

- **Version:** 8.x-1.x
- **Core:** ^10.1 || ^11 || ^12
- **Depends:** drupal:contact
- **Configure:** `/admin/config/user-interface/contact-tos-checkbox` (`contact_tos_checkbox.settings`)
- **Permission:** `administer contact tos checkbox`
- **Mechanism:** `#[Hook('form_contact_message_feedback_form_alter')]` in `ContactTosCheckboxHooks` injects a `#required` checkbox when `feedback.enabled`.
- **Config keys:** `feedback.enabled`, `feedback.label`, `feedback.description`.

**Security:** Settings route is permission-gated; no anonymous or mutating endpoints. The description is admin-set config rendered as markup (trusted-editor input). No security findings.
