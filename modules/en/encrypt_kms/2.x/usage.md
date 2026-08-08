<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Encrypt: AWS KMS provides an AWS KMS-based encryption method for the Encrypt module, delegating encryption/decryption to AWS Key Management Service.

---

The Encrypt module provides a pluggable encryption framework; encrypt_kms adds AWS KMS as an encryption method, so encryption keys are managed by AWS KMS rather than stored on the site. This is a strong approach: the encryption key never leaves KMS (envelope encryption / KMS encrypt/decrypt calls), so a database or filesystem compromise does not expose the key — the site holds only KMS-encrypted data and needs AWS credentials to decrypt. The security therefore rests on the AWS credentials and KMS key policy: the IAM credentials that let the site call KMS must be protected (out of plain config, minimally scoped to the specific KMS key and encrypt/decrypt actions), and the KMS key policy should restrict who/what can use it. Used correctly it is a robust way to encrypt data at rest with managed keys. Confirm the AWS credentials are secured and the KMS key/IAM policy is least-privilege.

---

- Encrypt via AWS KMS.
- Use managed keys for encryption.
- Keep keys in KMS not on the site.
- Encrypt data at rest.
- Protect data against DB compromise.
- Secure the AWS credentials.
- Scope IAM to the KMS key.
- Least-privilege the KMS policy.
- Use envelope encryption.
- Delegate crypto to KMS.
- Encrypt with the Encrypt module.
- Confirm the key policy.
- Enable when needed.
- Keep disabled otherwise.
- Restrict administration.
- Confirm on your site.
- Test before production.
- Review configuration.
- Pair with related modules.
- Verify theme fit.
- Match your use case.
- Confirm compatibility.