<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Authenticate by Mail — agent index

**Replaces password login with a mailed one-time login link** (passwordless). Depends on core `user`. Version
**1.1.1**. Core `^10.1||^11`.

Authentication — **correctly implemented**: reuses core's `user_pass_rehash` + `hash_equals` + expiry + last-
login single-use (same as core's reset link). The link is a **capability** (secure mail only); email security
becomes auth security. Layers on core auth.
