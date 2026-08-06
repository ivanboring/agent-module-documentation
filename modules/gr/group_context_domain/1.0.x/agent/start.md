<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Group Context Domain (group_context_domain) — agent index

Derives the active **Group from the current domain**, so context-aware code (blocks, plugins) works
away from Group routes. Version **1.0.0**. Core `^10 || ^11`.

Closes a real gap in the Group + Domain multi-tenant shape: Group context is normally route-derived,
but on a tenant site the Group is implied by the **hostname**.

**Say this plainly: context is presentation plumbing, not access control.** It tells blocks which
tenant is active; it does not stop one tenant's content being reachable on another's domain. The
boundary is Group permissions plus a domain access module.

Confirm behaviour when a domain has **no** Group, and when **two** Groups claim one domain — both
are states a real site reaches.