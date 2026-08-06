<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Cookiebot + GTM wires Cookiebot's consent signal into Google Tag Manager, so tags fire according to the consent categories the visitor chose.

---

The architecture is the one large organisations end up with, and it is worth understanding because it is where consent actually gets enforced. **Cookiebot** scans the site, categorises the cookies it finds and presents the banner. **Google Tag Manager** is where marketing adds and removes tags without a deployment. Neither alone is sufficient: Cookiebot knows what the visitor agreed to and cannot stop a GTM tag firing, and GTM fires tags and knows nothing about consent. The join is Google's **Consent Mode**, in which the consent state is pushed into GTM's data layer and each tag's trigger tests it — and getting that join right is the whole compliance question. This module supplies the Drupal side, version **1.0.20** on `^8.8` through `^11`, with an `access cookiebot gtm config` permission correctly marked `restrict access: TRUE`. Three things to verify rather than assume, because each is a common way this architecture fails silently. **The consent signal must arrive before any tag can fire**, or the first pageview leaks regardless of what the visitor later chooses. **Tags added in GTM by someone who does not know the convention will fire unconditionally**, since the consent check lives in each tag's trigger rather than in the container — which makes the tag inventory a recurring governance task rather than a setup step. And **anything Drupal itself adds is outside GTM entirely**: a module that attaches an analytics script through Drupal's asset system is not governed by any of this, and is the thing a scan finds.

---

- Connect Cookiebot consent to GTM.
- Fire tags according to consent categories.
- Implement Google Consent Mode.
- Gate analytics tags behind consent.
- Meet a GDPR requirement with GTM.
- Support a marketing team's tag workflow.
- Block marketing tags until opt-in.
- Push consent state to the data layer.
- Support a cookie scan's categories.
- Reduce compliance risk from tags.
- Support an enterprise consent architecture.
- Gate remarketing tags.
- Add consent-aware tag firing.
- Support a multi-market consent setup.
- Audit which tags respect consent.
- Implement consent for a tag container.
- Support a privacy programme.
- Reduce unconsented tracking.
