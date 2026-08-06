<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Varbase Social Single Sign-On (varbase_auth) — agent index

Social login for **Varbase** through the Social API. Version **10.1.1**.
Core **`~11.4.0`** — pinned to one Drupal minor, as with the rest of the Varbase family.
Depends on `system`, `block`, `social_auth:social_auth`. No routes or permissions of its own.

Single class: `Hook/VarbaseAuthHooks` — the real work is Social API's.

**Three things to raise for any social login integration.**

1. **Account linking is the security decision.** Whether a social identity matching an existing
   email logs into that account determines whether control of a provider account grants control of
   a local one. Check the Social API's email-matching and verification settings before enabling
   this where privileged local accounts exist.
2. **Provider outage = login outage** for anyone without a local password. Keep a local password
   path for staff.
3. **Each provider is a data-sharing relationship** — identity, usually email and profile data.
   Privacy notice, and on an EU site the lawful-basis analysis.