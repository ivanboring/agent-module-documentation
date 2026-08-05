<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Civic Cookie Control integrates the commercial Civic Cookie Control consent banner with Drupal: cookie categories, necessary-cookie declarations, IAB TCF vendor configuration and multi-language consent text, all managed from Drupal admin screens.

---

Cookie-consent compliance under UK/EU law needs more than a banner: you must categorise cookies, let visitors accept or reject each category, record consent, and — if you serve programmatic advertising — participate in the IAB Transparency and Consent Framework. This module wires Civic's hosted plugin into Drupal and gives you the Drupal-side configuration for it. Config objects ship for the main settings plus IAB and IAB2 vendor lists (`civiccookiecontrol.settings`, `.iab`, `.iab2`), and the module's classes model the pieces you configure: cookie categories (`CookieCategoryInterface`), necessary cookies (`NecessaryCookieInterface`), alternative-language consent text (`AltLanguageInterface`) and vendor handling (`CCC9Vendors`), with `CCCConfigNames` centralising the config object names. Administration lives under `cookiecontrol.admin_overview` (the `configure` route) behind the `administer civiccookiecontrol` permission, and the front-end libraries are declared in the module's info file so the banner loads sitewide. Note the naming: the project is `civicccookiecontrol` (with the triple c) while the module machine name is `civiccookiecontrol`.

---

- Show a cookie consent banner that satisfies UK and EU law.
- Let visitors accept or reject cookie categories individually.
- Declare strictly necessary cookies that cannot be rejected.
- Configure IAB TCF vendors for programmatic advertising.
- Provide consent text in several languages.
- Block analytics scripts until consent is given.
- Record and re-prompt for consent after a policy change.
- Categorise marketing, analytics and functional cookies.
- Meet accessibility expectations with Civic's hosted widget.
- Manage consent configuration from Drupal rather than Civic's dashboard.
- Support IAB2 vendor lists for ad tech.
- Give each category its own description shown to visitors.
- Align consent categories with a privacy policy.
- Apply consent settings across a multilingual site.
- Reduce legal risk from untracked third-party cookies.
- Configure the banner's appearance and behaviour.
- Restrict consent configuration to a compliance role.
- Keep consent config exportable with the site.
- Document which cookies the site sets and why.
- Update vendor lists as ad-tech partners change.
