<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Group Sites takes a Group entity supplied by a context provider, makes it the site's global Group context, and applies an access policy based on whether a Group was found — the usual policy being "deny access to everything outside this Group".

---

The problem it solves is running several sites from one Drupal install without running several Drupal installs. Given a context provider that maps the current domain to a Group — `group_context_domain` is the recommended one — this module denies access to every other Group's content, so each domain behaves like its own website while sharing one codebase, one user table and one admin.

The design is deliberately open at both ends. Two tagged-service interfaces let you supply your own behaviour: `GroupSitesNoSiteAccessPolicyInterface` for what happens when no Group is detected, and `GroupSitesSiteAccessPolicyInterface` for what happens when one is. The module ships "deny all" for the first (the default, and the recommended one) and a single policy for the second that disables all but the active Group. The README points at the Flexible Permissions module for anyone writing their own.

**Admin mode is the part to understand before granting anything.** Toggled from the toolbar, it makes the site behave "as if Group Sites wasn't even installed" — which is to say it turns off the access scoping that is the entire point of the module. That is genuinely needed for site building, and it is correctly gated behind its own `use group_sites admin mode` permission with routes that refuse to activate a mode already active. But whoever holds that permission can see and edit every microsite's content, so it belongs to a named administrative role and nothing else.

The README also explicitly discourages the built-in "Group from URL" context in favour of a real context provider.

---

- Run several microsites from one Drupal install.
- Scope content access to the current domain's Group.
- Deny access to other Groups' content.
- Derive the active Group from the domain.
- Share one user table across microsites.
- Share one codebase across microsites.
- Write a custom no-Group access policy.
- Write a custom Group access policy.
- Toggle admin mode to build the site.
- Restrict admin mode to a named role.
- Audit who holds use group_sites admin mode.
- Keep deny-all as the no-context default.
- Avoid the discouraged Group from URL context.
- Install group_context_domain as the context provider.
- Grant configure group_sites separately.
- Study Flexible Permissions before writing a policy.