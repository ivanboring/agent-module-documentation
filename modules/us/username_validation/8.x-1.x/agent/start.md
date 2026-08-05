<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Username Validation (username_validation) — agent index

Configurable username rules — length, allowed characters, forbidden patterns — at registration and
profile edit. No dependencies. Version **8.x-1.4**. Core requirement `^9 || ^10 || ^11`.

**Why core's permissiveness is a problem — three distinct issues:**
1. **Visual confusability.** Cyrillic characters rendering identically to Latin ones, zero-width
   joiners, RTL marks — one account can impersonate another anywhere the name is the identifier.
2. **Operational awkwardness.** Whitespace and exotic characters break shell scripts, CSV exports
   and URL patterns written assuming something simpler.
3. **Spam registrations** often follow recognisable shapes a pattern rule catches cheaply.

**Two things to get right:**
- **Restrictive rules exclude real people.** Names outside the Latin alphabet are legitimate and
  common; an ASCII-only rule on a public site is a decision about **who may register**. For an
  international audience, restrict by **confusability and control characters**, not by alphabet.
- **Rules apply going forward.** Existing accounts violating a new rule are not migrated — decide
  whether they are grandfathered or forced to change. And confirm validation runs on **profile
  edit** as well as registration, or a name can be changed to a forbidden one afterwards.
