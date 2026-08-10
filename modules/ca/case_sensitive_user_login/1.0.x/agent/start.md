<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Case Sensitive User Login — agent index

**Provides case-sensitive login for usernames** (adds a validate handler requiring case-exact match). Depends on
core `user`. Version **1.0.0**. Core `^10||^11`.

Purely **additive/restrictive** (layers on core auth, no bypass). Caveats: core already enforces case-insensitive
username *uniqueness*; the extra `=` check follows **DB collation**, so it is a **no-op under a case-insensitive
collation** — don't treat it as a security boundary without a case-sensitive collation.
