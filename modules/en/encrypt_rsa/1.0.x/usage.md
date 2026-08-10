<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Encrypt RSA encrypts your data using the RSA cryptosystem.

---

Encrypt RSA adds an **RSA encryption method to the Encrypt module** — encrypting/decrypting data with the
RSA cryptosystem using **phpseclib** and asymmetric key pairs managed by the **Key** module
(`key_asymmetric`). It depends on the Encrypt and Key Asymmetric modules, in the Encryption package.

Use it to RSA-encrypt data via the Encrypt framework. It is a security/crypto feature and it is built on the
right foundations: it uses the well-maintained **phpseclib** crypto library (not hand-rolled crypto) and stores
keys via the **Key module's asymmetric key management** (so private keys live in Key providers, not scattered
config). Practical notes: RSA is for **small payloads / key-wrapping** (encrypt a symmetric key or a short
value with RSA, not large data), keep the **private key** in a secure Key provider (env/secret, not committed),
and use an appropriate padding (OAEP) for confidentiality. It has no access-control role. Configure the RSA key
pair and encryption profile.

---

- Add an RSA method to Encrypt.
- Encrypt/decrypt with RSA.
- Use phpseclib (established crypto lib).
- Manage keys via Key asymmetric.
- Depend on Encrypt and Key Asymmetric.
- Keep private keys in Key providers.
- Use RSA for small payloads / key-wrapping.
- Keep the private key secure (secret).
- Use appropriate padding (OAEP).
- Have no access-control role.
- Configure the key pair and profile.
- Handle RSA encryption.
- Encrypt data.
- Configure the encryption.
- Decrypt data.
- Handle the crypto.
- Encrypt with RSA.
- Wrap keys.
- Secure the private key.
- Provide RSA encryption.
