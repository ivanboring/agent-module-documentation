<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Consent Popup provides a configurable block that shows a consent notice — the simplest possible cookie banner, implemented as a block rather than as a consent-management framework.

---

The module is small: a block plugin in `src/Plugin`, `templates/consent-popup.html.twig`, a stylesheet and `js/consent-popup.js`, with configuration held in the block instance. There is no dependency beyond core, no routes, no permissions and no configuration page. What it is important to be clear about is what it does **not** do, because "cookie banner" covers two very different things. A **notice** tells visitors that cookies are used; a **consent manager** actually withholds third-party scripts until the visitor opts in, and re-runs them on acceptance. This module is the first. Under GDPR and the ePrivacy rules, a notice that appears while tracking scripts have already loaded does not obtain consent — which is the entire compliance question — so a site with analytics or marketing tags needs a manager such as `simple_klaro` (wave 58) or the Orejime family (wave 64), not this. Where this fits is the case with no third-party tracking at all: a strictly-necessary-cookies-only site that wants to say so, or a non-consent notice such as an age gate or a terms reminder. Note the `core_version_requirement` contains a typo — `^10 | ^11` with a single pipe — which parses but is not the intended `||`.

---

- Show a simple cookie notice.
- Display a terms reminder on first visit.
- Announce that only essential cookies are used.
- Place a notice as a block in any region.
- Style a notice to match a theme.
- Remember dismissal in the browser.
- Show an age-gate style notice.
- Add a lightweight banner without a framework.
- Configure the message per block instance.
- Show a notice on selected pages only.
- Theme the popup with a Twig override.
- Provide a short-term notice during a change.
- Announce a policy update.
- Show a notice on a site with no tracking.
- Export the notice with block configuration.
- Add a dismissible information bar.
- Keep the front end free of a consent library.
- Display a maintenance or migration notice.
