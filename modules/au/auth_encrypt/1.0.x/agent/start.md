<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Auth Encrypt — agent index

**Encrypts and decrypts authentication credentials** (avoid plaintext). Version **1.0.0-beta2**. Core `^10||^11`.

Security — value depends on **key management**: keep the encryption key out of code/DB (env/Key store), rotate,
never log (a leaked key defeats it); review the algorithm/key handling. No access role.
