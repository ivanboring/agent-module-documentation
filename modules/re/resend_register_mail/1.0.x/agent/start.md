<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Resend registration / welcome email (resend_register_mail) — agent index

Adds a **bulk user action** to re-send the account registration/welcome mail. Depends on core
`user`. Core requirement `^10.2 || ^11`.

Key facts:
- One route, `resend_register_mail_action.resend_email` at `/admin/user/resend-email`
  (`_form: UserMultipleResendEmail`), with requirement:

  ```yaml
  _permission: 'administer users+resend account emails'
  ```

  The **`+` is Drupal's OR** syntax — either permission grants access. (`,` would mean AND.)
- Its own permission `resend account emails` is **`restrict access: true`**. That is
  appropriate: depending on the configured mail type, resending can regenerate a one-time
  login link for the target account, so the permission is close to account takeover. Do not
  grant it to a general support role without thinking about which mail type is configured.
- The action itself lives in `src/Plugin` and appears in the People screen's bulk-operations
  dropdown; `src/Hook/` and `config/install` supply defaults and mail-type selection.
- No entity types, no services beyond `resend_register_mail.services.yml`, no Drush commands.
