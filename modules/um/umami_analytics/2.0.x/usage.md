<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Umami Analytics adds the Umami tracking script to a site — a privacy-focused, cookieless analytics platform that can be self-hosted.

---

The reason this exists rather than using Google Analytics is regulatory. Umami does not set cookies and does not collect personal data in the way conventional analytics does, which in many European interpretations means it can run **without consent** — and an analytics tool that works before the consent banner is answered gives complete data rather than data from the subset who accepted. Self-hosting takes that further: the data never leaves the organisation's infrastructure, removing the third-country transfer question that has caused repeated problems for US-hosted analytics under GDPR. This module supplies the Drupal integration, on core `^10 || ^11`; the release is **2.0.0-beta4**. Two things to keep honest. "Cookieless" and "no consent required" are **not the same claim** — the second is a legal conclusion that depends on jurisdiction, on how the tool is configured, and on what is actually collected, so it belongs to a data-protection assessment rather than to a module description. And self-hosting is what removes the transfer question; using Umami's hosted service is a different arrangement with a different answer.

---

- Add privacy-focused analytics.
- Run analytics without cookies.
- Collect data without a consent banner.
- Self-host analytics data.
- Avoid third-country data transfer.
- Replace Google Analytics.
- Meet a data-protection requirement.
- Get complete traffic data.
- Support a public-sector privacy policy.
- Track page views simply.
- Reduce third-party requests.
- Keep analytics inside the organisation.
- Support a GDPR-conscious build.
- Add lightweight tracking.
- Avoid consent-related data loss.
- Track a campaign's traffic.
- Support an ethical analytics choice.
- Reduce analytics script weight.
