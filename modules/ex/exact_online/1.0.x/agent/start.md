<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Exact Online — agent index

**Exact Online accounting/ERP integration** (picqer/exact-php-client, OAuth). Version **1.0.0-alpha1**. Core `^10||^11`.

**SECURITY (1.0.0-alpha1):** `/admin/config/services/exact-online/reset` is `_access: TRUE` and `reset()` deletes all OAuth tokens on `GET ?confirm=1` (no auth/CSRF) → anonymous DoS of the sync. Gate behind an admin permission + POST confirm. Credentials env-backed.