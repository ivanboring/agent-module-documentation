<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Group Sites (group_sites) — agent index

Makes a **Group** from a context provider the global site context, then applies an access policy —
typically denying everything outside that Group, so one install serves several microsites.
Version **1.1.0**. Core `^10.3 || ^11`. Depends on `group`.
Configure at `/admin/group/sites/settings` (`configure group_sites`).

Pair with a context provider — **`group_context_domain`** is recommended. The README explicitly
**discourages** the built-in "Group from URL" context.

Extension points (tagged services):
`GroupSitesNoSiteAccessPolicyInterface` + tag `group_sites_no_site_access_policy`;
`GroupSitesSiteAccessPolicyInterface` + tag `group_sites_site_access_policy`.
Ships deny-all (default) and one "disable all but the active Group" policy.

**Admin mode — state this before granting.** `/admin/group/sites/activate_admin_mode` makes the
site behave "as if Group Sites wasn't even installed", i.e. it **turns off the access scoping that
is the module's entire purpose**. Correctly gated on `use group_sites admin mode`, with
`_group_sites_admin_mode` requirements preventing double-activation. Anyone holding it can see and
edit **every** microsite's content — named administrative role only.