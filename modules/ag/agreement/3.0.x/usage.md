<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Agreement makes users accept a document — terms of service, an acceptable use policy, an NDA — before they can use the site, and records that they did.

---

Each agreement is a configuration entity with its own text, target roles, paths and re-acceptance rules, managed at `/admin/config/people/agreement`. Once configured, a user in a targeted role is redirected to the agreement page until they accept; the acceptance is stored, so the site has a record of who agreed to what and when. Three permissions divide the responsibilities sensibly: `administer agreements` (marked `restrict access: true`), `bypass agreement` for accounts that must not be interrupted — deployment users, monitoring, support staff — and `revoke own agreement`, which lets a user withdraw their acceptance, a genuinely thoughtful inclusion given that consent under GDPR must be as easy to withdraw as to give. An `agreement.api.php` documents hooks and `AgreementHandlerInterface` allows the behaviour to be extended. The dependency is core `filter`, because the agreement text runs through a text format. Two practical notes: the redirect applies to every request from a targeted user until acceptance, so `bypass agreement` needs assigning before a rollout rather than after; and this module records acceptance, which is one part of a consent obligation — the text, its versioning and what happens on refusal are policy decisions it cannot make for you.

---

- Require acceptance of terms before using a site.
- Record who accepted which agreement and when.
- Show an NDA to contractors on first login.
- Require re-acceptance when terms change.
- Target an agreement at specific roles.
- Let users withdraw their acceptance.
- Exempt monitoring accounts from the interruption.
- Meet a compliance requirement for policy acceptance.
- Show an acceptable use policy to new members.
- Require agreement before accessing a members' area.
- Apply an agreement to specific paths.
- Keep agreement text under a text format.
- Provide evidence for an audit.
- Show different agreements to different roles.
- Onboard staff with a code of conduct.
- Extend acceptance handling via the API.
- Require agreement after a policy update.
- Restrict agreement administration to a trusted role.
