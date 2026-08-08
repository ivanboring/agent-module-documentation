<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Civic Cookie Control (civicccookiecontrol) — agent index

Integrates the commercial **Civic Cookie Control** consent widget for **UK/EU cookie-law**
compliance. Version **4.6.1**. Core `^9.3 || ^10 || ^11`. Machine name `civiccookiecontrol`.
Submodule `civic_govuk_cookiecontrol` (GOV.UK styling). Permission `administer civiccookiecontrol`.

**Two caveats:** (1) front end to a **third-party product** — needs a Civic account + API key (keep
the key out of plain config). (2) A banner only complies if cookie-setting scripts **actually
respect it** — gating analytics/marketing/embeds by category is a config job you must finish, or the
banner is decorative.