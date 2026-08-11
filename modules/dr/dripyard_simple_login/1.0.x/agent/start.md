<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Dripyard Simple Login — agent index

**Replaces the login form with magic-link (passwordless) auth** by repurposing core password-reset. Depends on
core `user`. Version **1.0.0**. Core `^11`.

Authentication — **positive**: the link uses core's `user.reset.login` route and the controller **delegates to
core `resetPassLogin()`** (secure `user_pass_rehash` HMAC + `hash_equals` + expiry, single-use) and reuses core's
password-reset flood control. Inherent caveat: security = **email + link delivery** (TLS mail, short timeout;
weigh other factors for privileged accounts).
