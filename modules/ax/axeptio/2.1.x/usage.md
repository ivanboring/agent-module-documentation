<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Axeptio embeds the Axeptio consent widget, a European consent management platform.

---

Consent management platforms are largely interchangeable in what they show and quite different in what they are bought for. Axeptio is a French vendor, and for organisations subject to CNIL enforcement that provenance is the point: the data stays in the European Union, the vendor is subject to the same regulator as the site, and the third-country transfer question that has repeatedly caught US-hosted tooling does not arise. It is also known for a conversational banner design that measurably increases the proportion of visitors who make an active choice rather than dismissing, which matters because an unanswered banner is not consent. This module supplies the integration, version **2.1.0** on core `^9.2 || ^10 || ^11`, behind an `administer axeptio` permission. The thing that determines whether any consent platform works is the same in every case and is worth repeating whenever one comes up: **the banner is the easy half**. What decides compliance is whether the trackers are actually held back until consent is given, and a site that embeds a consent widget while its analytics tag, its video embeds, its social buttons and its map are all still loading unconditionally has bought a banner and nothing else. That means every script on the site has to be inventoried and gated, including ones added by modules rather than by a tag manager, and it means checking the **page cache**: a consent decision is per visitor, and a page cached with a script tag in it serves that script to everyone regardless of what they chose.

---

- Add a consent banner to a European site.
- Keep consent data in the EU.
- Meet a CNIL compliance requirement.
- Increase active consent choices.
- Gate analytics behind consent.
- Manage cookie categories.
- Replace a US-hosted consent platform.
- Support a French organisation's obligations.
- Record consent decisions.
- Add a cookie preference centre.
- Block video embeds until consent.
- Support a privacy assessment.
- Reduce third-country transfer risk.
- Improve consent banner completion.
- Manage consent across a multilingual site.
- Support an audit of tracking.
- Add a compliant cookie notice.
- Gate social embeds behind consent.
