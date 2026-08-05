<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# SAML Restrict to OU (samlauth_restrict_to_ou) — agent index

Refuses access to SAML-authenticated users whose **Organizational Unit** attribute is not on an
approved list. Requires **`samlauth`**. Settings at `/admin/config/people/saml-restrict`;
`administer samlauth_restrict_to_ou` is `restrict access: true` — appropriate, since that screen
**is** the access-control policy. Version **1.0.5**. Core requirement `^10 || ^11`.

**The gap it fills:** federated login answers *who you are*, not *whether you belong here*. A
university IdP authenticates every student, staff member and contractor; an enterprise IdP
authenticates the whole company. A site for one faculty or department needs a second gate after
authentication succeeds.

**Three things determine whether the gate is trustworthy — check each:**
1. **OU values are strings owned by another system.** A directory reorganisation renames them and
   the list stops matching — usually by locking everyone out. Decide who watches for that.
2. **Matching semantics.** A user may carry multiple OU values or a nested path. Exact, prefix or
   substring? A substring match on `Finance` also admits `Finance Contractors`.
3. **The check must run on every login, not only at account creation.** If a local account persists
   and stays usable after the user moves OU, the restriction has become a one-time filter rather
   than an ongoing control.
