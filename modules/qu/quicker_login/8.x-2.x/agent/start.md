<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Quicker Login (quicker_login) — agent index
**Development-only, password-less login/impersonation as any user.**

- **Version:** 8.x-2.x
- **Core:** ^8.8 || ^9 || ^10 || ^11
- **Route:** `quicker_login.login` → `/user/ql/{user_name}`, `_access: 'TRUE'`
- **Also:** `QuickerLoginSubscriber` intercepts any request with `?ql={user_name}` (and `returnto`) to log in as that user
- **Service:** `quicker_login.service` → `loginUserName()` calls `user_login_finalize()`
- **Warning:** `hook_preprocess_page` shows a persistent "enabled, not for production" message

**Security:** by design a password-less impersonation tool exposed on an `_access: 'TRUE'` route — anonymous visitors can become any account (including admin). Development/test only; never enable in production. A security finding is already recorded for this version (its security.md is authoritative and untouched here).
