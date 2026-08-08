<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Encrypt: AWS KMS (encrypt_kms) — agent index

**AWS KMS encryption method** for the Encrypt module (keys managed by AWS KMS). Version **2.0.2**.

**Strong approach:** the key never leaves KMS — a DB/filesystem compromise doesn't expose it (site
holds KMS-encrypted data + needs AWS creds to decrypt). **Security rests on:** the AWS credentials
(out of plain config, IAM **scoped to the specific KMS key + encrypt/decrypt**) and the KMS key
policy (least-privilege).