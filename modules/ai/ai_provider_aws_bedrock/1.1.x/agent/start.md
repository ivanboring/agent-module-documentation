<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# AWS Bedrock Provider (ai_provider_aws_bedrock) — agent index

Makes **Amazon Bedrock** available to the Drupal **AI** module. Depends on `ai`, **`key`** and
`aws`; library `aws/aws-sdk-php ^3.316`. Core requirement `^10.3 || ^11`.
**Release is 1.1.0-beta4 — beta.**
Settings at `/admin/config/ai/providers/aws_bedrock`, permission `administer ai providers`.

Key facts:
- **The `key` dependency is a design strength worth crediting.** AWS credentials are held as
  **Key entities**, so they can come from an environment variable or file provider and stay out of
  exported configuration — the pattern this repo requires, and the failing behind the
  `services_api_key_auth` (wave 65) and `cache_utility` (wave 61) findings.
- **The argument that usually matters organisationally:** Bedrock runs inside the customer's AWS
  account, so model usage falls under existing IAM policies, billing and **data-residency**
  arrangements. Prompts do not leave the cloud tenancy the way they do with a public API endpoint
  — frequently the difference between an AI feature being approvable and not.
- Prefer **IAM roles** over long-lived access keys where the hosting allows it; the Key module
  supports sourcing credentials without embedding them.
- Model choice and feature wiring live in the `ai` module; this contributes the provider only.
