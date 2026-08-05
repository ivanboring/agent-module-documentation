<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
AWS Bedrock Provider makes Amazon Bedrock available to Drupal's AI module, so the models hosted there — Anthropic's Claude, Amazon's own, and others — can back any AI feature on the site.

---

The AI module abstracts providers so that a feature written against it works with whichever model a site configures, and this supplies the Bedrock one through `aws/aws-sdk-php ^3.316`. Two things make it a notably good fit for organisations that are already on AWS. Credentials are held through the **Key** module (`drupal/key ^1.18` is a hard requirement), so AWS access keys can come from an environment variable or a file provider rather than being written into exported configuration — the pattern this repo requires and the failing that produced findings against other modules in this campaign. And because Bedrock runs inside an AWS account, model usage sits under the same IAM policies, billing and data-residency arrangements as the rest of that account, which is frequently what makes an AI feature approvable at all: prompts do not leave the organisation's cloud tenancy in the way they do with a public API endpoint. Configuration is at `/admin/config/ai/providers/aws_bedrock` under `administer ai providers`. The release is **1.1.0-beta4**, and requirements are core `^10.3 || ^11` with `ai`, `key` and `aws`.

---

- Use Claude models through AWS Bedrock.
- Keep AI usage inside an AWS account.
- Hold AWS credentials in a Key entity.
- Meet a data-residency requirement for AI.
- Bill AI usage through AWS.
- Apply IAM policies to model access.
- Back Drupal AI features with Bedrock.
- Avoid sending prompts to a public API.
- Use an approved cloud provider for AI.
- Switch models without changing features.
- Support an AWS-standardised organisation.
- Use Bedrock for translation or summarisation.
- Configure credentials from environment variables.
- Support a regulated AI deployment.
- Use a region-specific model endpoint.
- Combine Bedrock with other AI providers.
- Meet a procurement requirement for AI hosting.
- Audit AI usage through AWS.
