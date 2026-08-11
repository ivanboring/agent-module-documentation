<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
External reset password redirects the password-reset action to a configured external URL.

---

External reset password lets a site configure an external URL for the user password-reset flow — so instead of Drupal's built-in reset form, users are directed to an external identity provider or custom reset page. It suits sites where authentication/password management lives in an external system.

Because it changes where password resets happen, ensure the external URL is trusted and uses HTTPS. Administration is via a settings page under `/admin/config/people`. Depends on core `user`; supports Drupal 8.8+ through 11.

---

- Set an external password-reset URL.
- Redirect resets to an external system.
- Bypass the built-in reset form.
- Suit external identity providers.
- Direct users to a custom reset page.
- Ensure the external URL is trusted.
- Require HTTPS for the external URL.
- Configure under /admin/config/people.
- Depend on core `user`.
- Support Drupal 8.8+ through 11.
- Support external auth setups.
- Manage resets externally.
- Redirect the reset action.
- Configure the reset target.
- Integrate external password management.
- Avoid the local reset flow.
- Point resets at an IdP.
- Handle resets off-site.
