<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# CloudFront Invalidate All — agent index

**Invalidates an AWS CloudFront distribution whenever Drupal invalidates its cache** (wildcard `/*`). Provides
permissions. Version **1.2.0**. Core `^10||^11`.

Performance/CDN — calls the **AWS CloudFront API** (egress) with **AWS credentials** (store as secrets — env/IAM/
Key, not code/config; scope IAM to `cloudfront:CreateInvalidation`, least privilege). Mind AWS cost of frequent
wildcard invalidations. No content/access role beyond permission.
