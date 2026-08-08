<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# External Links Filter (elf) — agent index

Text-format **filter** that adds a CSS class to **external / mailto** links, with an optional
**signed redirect**. Version **dev-1.x**. Core `^8 || ^9 || ^10 || ^11`. Depends on core `editor`.
Settings at `/admin/config/content/elf` (`administer site configuration`).

**Redirect is HMAC-protected — not an open redirect (cite as a positive).** `/elf/redirect` refuses
unless `key == Crypt::hmacBase64($url, privateKey)`, so only site-signed URLs redirect. Minor note:
comparison uses `!=` not `hash_equals()` — not exploitable here (no timing oracle against a full
HMAC), but `hash_equals()` is the textbook choice.

Display-only filter; attaches to a text format.