<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Encryption supplies simple symmetric encrypt/decrypt helpers using AES-256-CTR via PHP's openssl, with the key held in settings.php — a lightweight way for other code to encrypt values at rest.

---

Sometimes a module needs to store a value that should not sit in the database in clear — a third-party token, a sensitive field — without adopting the full Encrypt/Key ecosystem. This module is that lightweight option: a trait and service exposing `encrypt()` / `decrypt()` built on `AES-256-CTR` through openssl.

The design gets the important things right. The **key lives in `$settings['encryption_key']` in settings.php**, not in configuration or the database, so it is not exported to git and not present in a database dump — the correct place for a symmetric key, and the README documents generating a proper 32-byte random key. Each encryption generates a **fresh random IV** (`random_bytes(16)`) prepended to the ciphertext, which is essential for CTR mode.

Two things to understand about what it does and does not protect. It is **symmetric encryption keyed from settings.php**, so it defends data at rest against a database-only compromise (a leaked dump, SQL injection reading a column) — it does not protect against an attacker who can read settings.php or execute code, since they have the key. And CTR is a confidentiality mode without built-in authentication; the module derives an HMAC-based key alongside, but treat it as protecting secrecy, not as a guarantee that ciphertext was not tampered with, unless you have verified the integrity handling for your use. For encrypting a stored secret against casual DB exposure, it is a sound, small tool.

---

- Encrypt a value at rest.
- Decrypt a stored value.
- Protect a token in the database.
- Use AES-256-CTR simply.
- Keep the key in settings.php.
- Avoid the full Encrypt/Key stack.
- Encrypt a sensitive field value.
- Generate a proper 32-byte key.
- Store an API token encrypted.
- Defend against a leaked DB dump.
- Use a fresh IV per encryption.
- Call encrypt/decrypt from custom code.
- Keep the key out of git.
- Keep the key out of config.
- Understand it is symmetric.
- Know settings.php access means key access.
- Encrypt small secrets.
- Protect against SQL-injection reads.
- Add lightweight encryption.
- Share the key across config-sharing instances.