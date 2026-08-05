<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Social Auth Roles gives accounts created through Social Auth additional roles beyond `authenticated`, without affecting accounts created the normal way.

---

The distinction it draws is a useful one. A site may want people who signed up with Google or Facebook to land in a different state from people who registered with an email address and confirmed it — perhaps a lighter-weight role because the identity is weakly verified, perhaps a specific role because they arrived through a partner, perhaps a "social" role that a view or a permission keys off. Doing that with a global "roles on registration" setting is impossible because it cannot tell the two paths apart. This module hooks the Social Auth registration event specifically. Version **2.0.1** on `^8` through `^11`, requiring `social_auth`, configured behind `administer social api authentication`. **The security question is the one to settle first, and it is not about the module**: a role granted automatically at registration is granted to anyone who can complete the flow, so the roles offered here must carry no permission that matters — no content editing beyond own, no configuration, nothing that can grant further permissions. That is the same rule as for `select_registration_roles` in wave 73, and it is the rule that gets broken when someone adds "just editor, it's fine". Two further points worth knowing. **Social identity is weaker than email verification, not stronger** — a provider account can be new, disposable or automated, and the provider has verified an email for its own purposes, not yours. And **the role sticks**: an account keeps what it was given at creation, so tightening the configuration later does not affect anyone who already registered.

---

- Give social signups a distinct role.
- Mark accounts created via Google.
- Assign a partner role at social signup.
- Distinguish social from email registration.
- Apply a lighter role to weak identities.
- Target a view at social-created users.
- Support a community's onboarding.
- Assign a trial role to social signups.
- Segment users by registration path.
- Support a partner-driven signup flow.
- Apply a role for analytics segmentation.
- Give Facebook signups a specific role.
- Support a two-tier membership model.
- Assign a role for a social campaign.
- Reduce manual role assignment.
- Support a social login rollout.
- Mark accounts needing verification.
- Route social signups to a workflow.
