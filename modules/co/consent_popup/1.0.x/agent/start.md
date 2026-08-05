<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Consent Popup (consent_popup) — agent index

A block showing a consent/notice popup. No dependencies, no routes, no permissions, no config
page — configuration lives in the block instance.
`core_version_requirement: ^8.8 || ^9 || ^10 | ^11` (**note the single `|` before `^11`** — a typo
upstream; it parses, but is not the intended `||`).

> **This is a notice, not a consent manager — and the difference is the whole compliance
> question.** A notice tells visitors cookies are used. A consent manager **withholds
> third-party scripts until the visitor opts in** and activates them on acceptance. Under GDPR /
> ePrivacy, a banner that appears while analytics and marketing tags have already loaded does not
> obtain consent.
>
> If the site runs any third-party tracking, it needs a manager — `simple_klaro` (wave 58) or the
> Orejime family (wave 64) — not this module.

Where it does fit:
- a site with **no third-party tracking** that wants to say so;
- a non-consent notice: age gate, terms reminder, policy-change announcement, migration notice.

Key facts:
- Whole module: `src/Plugin/Block/`, `templates/consent-popup.html.twig`,
  `css/consent-popup.css`, `js/consent-popup.js`, `.module`.
- Dismissal state is client-side; placement and visibility are ordinary block concerns.
