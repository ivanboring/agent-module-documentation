<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# User not role (user_not_role) — agent index

**Condition plugin** matching when a user does **not** have a given role. Package `Condition`.
Version **2.0.1**. **Core requirement `^11.3 || ^12`** — Drupal 11.3+ only, reaching into a major
that does not exist yet. Unusually narrow for a module this small.

**The gap:** core's role condition expresses only the positive. The negative — show this to everyone
who is *not* an editor, offer this upgrade to people **without** the premium role — has no
expression, and the workarounds are all bad:
- **list every other role** — enumerate them, and remember to update when a role is added (nobody
  does);
- **a custom condition plugin** — code for a logical negation;
- **visible-to-authenticated plus CSS** — not a condition at all.

**Two things worth attaching:**
1. **A condition is visibility, not access.** A block hidden by a condition is genuinely not sent to
   the browser — but the content it would have shown is **still reachable wherever else it lives**.
   This controls presentation, never confidentiality.
2. **Negation includes anonymous.** An anonymous visitor has no roles beyond `anonymous`, so "does
   not have role X" is **true** for them — usually intended, occasionally not. Check it against what
   the condition is meant to express.
