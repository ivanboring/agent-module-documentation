<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Civic Cookie Control integrates the commercial Civic Cookie Control consent widget into Drupal, providing the cookie-consent banner and controls needed to comply with UK and EU cookie law.

---

Cookie-consent law requires that non-essential cookies are not set until the visitor agrees, with granular control and a record of consent. Civic Cookie Control (from CIVIC UK) is a widely used product for this; this module wires it into Drupal — configuration for the API key and categories, and the rendering of the consent UI — so a site gets a compliant, recognised consent experience without building one.

Two things are worth stating. First, it is a **front end to a third-party product**: it needs a Civic Cookie Control account and API key, and the consent widget is Civic's script, so you take on that service and its terms. Second — and this is the part sites get wrong — a consent banner only achieves compliance if the scripts that set cookies actually respect it. The module gives you the consent UI and the machinery to gate scripts by category; making analytics, marketing and embed scripts fire only after consent is a configuration job you must complete, or the banner is decorative. A submodule adds GOV.UK-styled variant.

For a UK/EU site needing recognised consent, it is a solid choice. Configure the categories, connect the API key (ideally not in plain config), and verify that gated scripts truly wait for consent.

---

- Add a cookie-consent banner.
- Comply with UK cookie law.
- Comply with EU cookie law.
- Use Civic Cookie Control on Drupal.
- Gate cookies by consent category.
- Record visitor consent.
- Provide granular cookie controls.
- Block analytics until consent.
- Block marketing scripts until consent.
- Configure consent categories.
- Connect a Civic API key.
- Use a GOV.UK-styled variant.
- Give visitors cookie choices.
- Show a recognised consent UI.
- Verify gated scripts wait for consent.
- Manage consent for embeds.
- Avoid building a consent tool.
- Meet GDPR cookie requirements.
- Restrict consent administration.
- Front a third-party consent product.