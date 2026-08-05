<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Social Auth Roles (social_auth_roles) — agent index

Assigns extra roles to accounts **created through Social Auth**, leaving normal Drupal registration
untouched. Requires `social_auth`. Settings at `/admin/config/social-api/social-auth/roles` behind
`administer social api authentication`. Version **2.0.1**.
Core requirement `^8 || ^9 || ^10 || ^11`.

**The distinction it draws is real:** a global "roles on registration" setting cannot tell the two
signup paths apart. This hooks the Social Auth registration event specifically.

**Settle the security question first, and it is not about the module: a role granted automatically
at registration is granted to anyone who can complete the flow.** The roles offered here must carry
**no permission that matters** — no content editing beyond own, no configuration, nothing that can
grant further permissions. Same rule as `select_registration_roles` (wave 73), and the rule that
gets broken when someone says "just editor, it's fine".

**Two further points:**
- **Social identity is weaker than email verification, not stronger.** A provider account can be
  new, disposable or automated, and the provider verified an email **for its own purposes**, not
  yours.
- **The role sticks.** An account keeps what it was given at creation — tightening the configuration
  later does not affect anyone already registered.
