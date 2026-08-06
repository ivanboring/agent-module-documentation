<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# OAuth 1.0 (oauth) — agent index

**OAuth 1.0a** server authentication. Depends on core `system`. Permissions
`access own consumers` and `oauth register any consumers`, both **`restrict access: TRUE`** —
appropriate, since consumer registration is a grant of API access. Version **8.x-2.6**.
Core requirement `^10.3 || ^11`.

**How 1.0a differs, and why it survives:** instead of bearer tokens, **every request is signed**
with a shared secret — so a captured request cannot be replayed and an intercepted token is not by
itself usable. That made it viable before TLS was universal, and it persists in **long-lived
enterprise APIs and some financial and government integrations** that still specify it.

**Honest positioning: a compatibility module, not a choice for new work.** **OAuth 2.0 with
`simple_oauth`** is what a new integration should use — simpler to implement correctly, an active
specification, and its weakness (bearer tokens usable by whoever holds them) is answered by **TLS
everywhere**, now an assumption rather than an aspiration. Reach for 1.0a **when the other side
requires it**.

**Three things to check on any OAuth 1.0a implementation — where the signing scheme goes wrong:**
1. the **signature comparison must be constant-time**;
2. the **nonce must be tracked**, so a signed request cannot be replayed inside its timestamp window;
3. the **timestamp window must be enforced and narrow** — a wide one turns nonce tracking into an
   unbounded store.

Related: `simple_oauth_revoke` (wave 80) for the OAuth 2.0 side's revocation endpoint.
