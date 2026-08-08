<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Encryption (encryption) — agent index

Simple symmetric **AES-256-CTR** encrypt/decrypt (openssl), key in **`$settings['encryption_key']`**
(settings.php). Version **4.0.0**. Core `^10.1 || ^11`.

**Done right:** key in settings.php (not config/DB/git); **fresh random IV** per op (`random_bytes(16)`)
prepended to ciphertext; README documents generating a 32-byte key.

**Scope:** protects data at rest against a **DB-only** compromise (leaked dump, SQLi read). Does
**not** protect against anyone who can read settings.php or run code (they have the key). CTR is a
confidentiality mode — treat integrity handling as unverified for your use unless checked.