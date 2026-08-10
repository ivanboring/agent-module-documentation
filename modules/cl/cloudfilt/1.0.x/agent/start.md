<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# CloudFilt — agent index

A **security middleware** that checks each request's IP against **CloudFilt** to block bots/scrapers/Tor/spam/
fraud/DDoS. Version **1.0.6**. Core `^8||^9||^10||^11`.

**Security-positive** edge filter — sends the **visitor IP** to CloudFilt (egress; personal data), **API key** as
a secret (HTTPS); makes a per-request outbound call (latency + confirm fail-open/closed on outage). No Drupal
access role.
