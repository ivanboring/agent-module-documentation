<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Did This Help — agent index

A **"was this helpful?" (Yes/No) feedback block** (optional comment; stores path/title/message/uid/IP).
Provides permissions. Version **2.0.8**. Core `^10.1||^11||^12`.

User-engagement — submit is a Drupal form (**CSRF-protected**), stored strings **escaped** (no XSS).
**Caveat:** **no flood control** — dedup blunts naive spam but a varying message floods the table; add
per-IP flood + gate the block for **anonymous** placements. No access role beyond permission.
