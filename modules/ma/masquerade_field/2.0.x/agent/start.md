<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Masquerade Field (masquerade_field) — agent index

Limits masquerading to a **specific set of users listed in a field on the impersonator's account**,
rather than anyone on the site. Requires **`masquerade`**. Version **2.0.1**.
Core requirement `^10.4 || ^11`.

**What it fixes:** `masquerade`'s permission is close to unbounded — its holder can become the
site's administrator. That is why organisations that need the support workflow often cannot grant
it.

**Permission design is careful and worth noting:**
- `edit masquerade field` — **`restrict access: true`**. This is the one that decides *who may
  impersonate whom*; it is effectively the grant itself.
- `view own masquerade field` / `view any masquerade field` — separate and unrestricted, so
  **seeing** the list is not the same as **setting** it.

**Two things to establish for any impersonation feature:**
1. **Audit trail.** Log who masqueraded as whom and when, somewhere the impersonator cannot edit —
   otherwise an action taken while masquerading is indistinguishable from one the real user took.
2. **Session scope.** What the impersonator may do is bounded only by the **target's** permissions.
   A list containing any privileged account hands over that account's authority entirely.
