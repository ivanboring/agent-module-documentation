<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Integrates the Exact Online accounting/ERP service (picqer/exact-php-client).

---

Exact Online integrates Exact Online services using the picqer/exact-php-client library — connecting Drupal to the Exact Online accounting/ERP platform via OAuth so data (invoices, customers, etc.) can be synced.

**Security warning (as shipped, 1.0.0-alpha1):** the route `/admin/config/services/exact-online/reset` is `_access: 'TRUE'` (anonymous) and `ExactOnlineAuthController::reset()` **deletes all stored OAuth tokens** on a GET with `?confirm=1` (no permission, no CSRF) — so an anonymous request (or a lured admin / an `<img>` tag) can wipe the connection and break the sync until re-authentication. **Gate the reset route behind an admin permission and use a POST confirm form.** Store the OAuth credentials securely (env-backed). Depends on core only; supports Drupal 10 and 11.

---

- Integrate Exact Online (accounting/ERP).
- Use the picqer/exact-php-client.
- Connect via OAuth.
- Sync invoices/customers.
- WARNING: `/…/reset` is `_access: TRUE`.
- WARNING: reset deletes tokens on a GET (no CSRF).
- Allow anonymous connection reset (DoS).
- Require an admin permission + POST confirm.
- Store OAuth credentials securely.
- Support Drupal 10 and 11.
- Harden the reset route.
- Handle accounting data
- Support Drupal.
- Support Drupal.
- Support Drupal.
