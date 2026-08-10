<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Encrypt RSA — agent index

An **RSA encryption method for the Encrypt module** using **phpseclib** + Key-managed asymmetric keys
(`key_asymmetric`). Depends on `encrypt`, `key_asymmetric`. Version **2.0.0-beta1**. Core `^10||^11`.

Security/crypto — built right: uses the **phpseclib** library (not hand-rolled) and **Key**'s asymmetric key
management. RSA is for **small payloads/key-wrapping**; keep the **private key** in a secure Key provider; use
OAEP padding. No access role.
