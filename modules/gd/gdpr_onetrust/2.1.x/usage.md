<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
GDPR One Trust Implementation embeds the OneTrust consent banner and, through its `onetrust_cookie_blocking` submodule, holds back scripts until the visitor has consented to the relevant category.

---

Consent is two jobs and most implementations only do the first. Showing a banner and recording a choice is the visible half; the half that actually determines compliance is **not loading the tracker until the answer is yes**, because a banner over an analytics script that has already fired collects consent for something that already happened. OneTrust is the enterprise product in this space — an organisation that has bought it will have a legal team, a cookie register and a scanning schedule already built around it, and the Drupal site is expected to slot in. This module does that: the banner script from the configured OneTrust account, plus the blocking submodule that is the part worth having. Version **2.1.0** on core `^10 || ^11`, configured at `/admin/config/system/gdpr-onetrust` behind a `restrict access: TRUE` permission (spelled `One Trust Access`, with a space and capitals — unusual for a permission machine name and worth knowing when writing a role's config by hand). Two things to verify rather than assume: **which scripts are actually blocked**, since anything a theme or another module adds through Drupal's own asset system will not be governed by the blocker unless it is wired in deliberately; and **caching**, because a consent decision is per-visitor and a page cached with a script tag in it will serve that script to everyone.

---

- Add a OneTrust consent banner.
- Block analytics until consent.
- Meet a corporate cookie policy.
- Integrate an existing OneTrust account.
- Hold back marketing scripts.
- Support a legal team's cookie register.
- Categorise cookies for consent.
- Record consent decisions centrally.
- Comply with GDPR on an EU site.
- Prevent tracking before opt-in.
- Standardise consent across many sites.
- Show a cookie settings link.
- Support a cookie audit.
- Block a third-party embed until consent.
- Meet an enterprise compliance requirement.
- Add a consent preference centre.
- Support a multi-region privacy policy.
- Align Drupal with a group-wide consent tool.
