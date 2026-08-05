<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Bootstrap External Link Pop-up renders `external_link_popup`'s outbound-link warning as a Bootstrap modal rather than the parent module's own dialog.

---

The parent module shows a confirmation when a visitor clicks a link leaving the site — *"You are now leaving our website"* — which is a requirement in several sectors: public bodies and regulated financial and health organisations often must not appear to endorse third-party content, and a documented interstitial is how that is demonstrated. This module is presentation only: on a Bootstrap-themed site it uses the framework's own modal, which is already loaded, matches the rest of the site and needs no additional styling to override. Version **2.2.0** on core `^9.3 || ^10 || ^11`, requiring `external_link_popup`. Two things to attach, and they are the ones that make an interstitial acceptable rather than merely present. **A modal is a focus event**: it must trap focus while open, return focus to the link on dismissal, close on Escape, and announce itself as a dialog — a warning nobody can dismiss with a keyboard is a link nobody can follow, and this is the same checklist as every other modal in this campaign. And **an interstitial has a cost that is worth naming to whoever asked for it**: it interrupts every outbound click, it is dismissed without being read after the second time, and it does not stop anyone going anywhere. Where the requirement is regulatory it is the right answer regardless; where it is a preference, a visual indicator on external links is the lighter alternative and is usually what the concern actually needed.

---

- Warn visitors before they leave the site.
- Meet a regulatory disclaimer requirement.
- Show an outbound-link modal in Bootstrap style.
- Avoid endorsing third-party content.
- Match the theme's modal styling.
- Add a leaving-site notice.
- Support a public body's link policy.
- Warn before a financial site's outbound links.
- Show a health-information disclaimer.
- Avoid extra CSS for the popup.
- Support a compliance requirement.
- Add a confirmation to partner links.
- Use the theme's existing modal component.
- Warn about leaving a secure area.
- Support a documented linking policy.
- Style an interstitial consistently.
- Add a disclaimer to external references.
- Meet an audit's linking requirement.
