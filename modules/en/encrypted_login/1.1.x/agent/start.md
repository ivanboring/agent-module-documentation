<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Encrypted Login — agent index

Encrypts login credentials **client-side (RSA/AES)** before submission (serves an RSA public key; decrypts
server-side). Depends on core `user`. Version **1.1.0**. Core `^10||^11`.

**Caveat:** client-side credential encryption is **NOT a substitute for HTTPS/TLS** — TLS already encrypts
credentials in transit, so this adds limited protection and risks a **false sense of security**. Keep HTTPS
mandatory (never serve login over HTTP), protect the private key as a secret. Doesn't change who can log in.
