<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Amazon SNS (amazon_sns) — agent index

Receives **AWS SNS** notifications at `/_amazon-sns/notify` and dispatches them as Drupal events.
Version **8.x-1.3**.

**Security done right (positive):** the endpoint is open (`_access: 'TRUE'`) because AWS posts
unauthenticated — the **SNS signature is the authentication**. Verified: each message is validated
with the AWS SDK `MessageValidator` (`validate()`), enforced by **exception** (invalid signature →
never processed); the SDK also checks the `SigningCertURL` is a real AWS host (anti-SSRF). Keep the
AWS SDK current.