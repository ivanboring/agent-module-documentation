<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Sberbank Acquiring — agent index

Drupal Commerce **payment gateway for Sberbank Acquiring** (register order + confirm payment via Sberbank's
API). Depends on `commerce`. Version **8.x-1.0-rc7**. Core `^9||^10||^11`.

**Security:** store Sberbank credentials as **secrets**; HTTPS; confirm payment **server-side** via
Sberbank's authenticated API (not a client return); confirm test/live.
