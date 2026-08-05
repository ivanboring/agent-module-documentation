<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Meta Conversions API (meta_conversions_api) — agent index

Sends conversion events to **Meta from the server**, replacing or supplementing the browser pixel.
Settings behind `administer meta_conversions_api`. Version **1.1.0**.
**Core requirement is written `^9 | ^10 || ^11`** — a single pipe, which is not valid Composer OR
syntax. Worth checking it behaves as intended.

**Why it exists:** the browser pixel is degraded by ad blockers, Safari tracking prevention
(cookie truncation) and iOS app tracking transparency. Server-side reporting bypasses all three.

**The privacy position changes substantially, not incidentally — state it plainly:**
1. **The visitor cannot see it and cannot block it.** There is no browser request to intercept, so
   ad blockers, tracking protection and browser settings have no effect. That is exactly why
   advertisers want it.
2. **Consent must therefore be enforced by the site** — nothing else will. If the visitor declined,
   the server must not send the event, and that is a **decision in code**, not a script the consent
   manager withholds.
3. **A hashed email is still personal data** under GDPR — hashing is pseudonymisation, not
   anonymisation. It needs a lawful basis, an entry in the processing register and a line in the
   privacy notice.

A site deploying this without those has moved its tracking somewhere its consent tooling cannot
reach.
