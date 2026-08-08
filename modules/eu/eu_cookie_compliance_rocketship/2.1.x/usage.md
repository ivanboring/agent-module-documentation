<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Rocketship EU Cookie Compliance slightly alters the EU Cookie Compliance module to match Rocketship expectations, integrating cookie consent and content blocking.

---

Rocketship EU Cookie Compliance adapts the EU Cookie Compliance module for the Rocketship
theme/distribution — adjusting its behaviour and integrating cookie consent with content blocking
(`cookie_content_blocker`) and GTM consent (`eu_cookie_compliance_gtm`) so third-party scripts/cookies are
gated by consent. It depends on those modules and provides its own permissions.

Use it on Rocketship-based sites that need EU/GDPR cookie compliance. This is a privacy/compliance feature
— it helps gate cookies and tracking scripts behind user consent, which is a positive control for GDPR/
ePrivacy obligations. As with all consent tooling, correct configuration is what makes it effective:
ensure the categories, blocked content and GTM integration actually prevent non-essential
cookies/scripts before consent. Configure the consent banner and blocking to match your privacy policy.

---

- Adapt EU Cookie Compliance for Rocketship.
- Gate cookies behind consent.
- Block content until consent.
- Integrate GTM consent.
- Depend on eu_cookie_compliance.
- Depend on cookie_content_blocker.
- Provide its own permissions.
- Support GDPR/ePrivacy.
- Gate third-party scripts.
- Configure consent categories.
- Prevent non-essential cookies pre-consent.
- Match the privacy policy.
- Use on Rocketship sites.
- Manage cookie consent.
- Block tracking until consent.
- Configure the consent banner.
- Apply a positive privacy control.
- Handle consent correctly.
- Comply with cookie law.
- Gate GTM by consent.
