<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Auth Encrypt encrypts and decrypts authentication credentials.

---

Auth Encrypt **encrypts and decrypts authentication credentials** — providing encryption/decryption of
credential data so it isn't handled/stored in plaintext, in the Security package.

Use it to protect credential data. It is a security feature and its value depends entirely on **key management**:
encryption is only as strong as how the **encryption key** is generated, stored and protected — ensure the key is
kept out of the codebase/database (env/Key module or a proper key store), rotated, and never logged; a leaked key
makes the encryption moot. Review its algorithm and key handling before relying on it for sensitive credentials.
It has no access-control role. Configure the encryption and key.

---

- Encrypt/decrypt auth credentials.
- Avoid plaintext credential handling.
- Protect credential data.
- Serve security.
- Provide encryption/decryption.
- Secure transmission/storage.
- DEPEND on sound key management.
- Keep the key out of code/DB (env/Key store).
- Rotate the key + never log it (a leaked key defeats it).
- Review the algorithm + key handling before relying.
- Have no access-control role.
- Configure the encryption and key.
- Handle credential encryption.
- Encrypt credentials.
- Configure the encryption.
- Protect credentials.
- Handle the keys.
- Secure credentials.
- Manage the key carefully.
- Provide credential encryption.
