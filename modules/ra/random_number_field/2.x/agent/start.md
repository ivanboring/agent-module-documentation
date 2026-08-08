<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Random Number Field (random_number_field) — agent index

Field type populating a **random number**. Version **2.0.0-rc1**.

**CRITICAL caveat:** the randomness is **non-cryptographic** — **never** use as a token, secret code,
password, or anything an attacker must not guess. Fine for raffle numbers/sampling/test data; use a
cryptographic source for security-sensitive randomness.