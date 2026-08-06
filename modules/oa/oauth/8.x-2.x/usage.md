<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
OAuth 1.0 provides OAuth 1.0a server authentication, so a third-party consumer can act on a user's behalf against the site's API.

---

OAuth 1.0a predates OAuth 2.0 and works differently in a way that is worth understanding rather than dismissing: instead of bearer tokens, every request is **signed** with a shared secret, so a captured request cannot be replayed and a token intercepted in transit is not by itself usable. That made it viable before TLS was universal, and it is why it survives in places — some long-lived enterprise APIs and a number of financial and government integrations still specify it, so a Drupal site being consumed by one of those needs to speak it. Version **8.x-2.6** on core `^10.3 || ^11`, with `access own consumers` and `oauth register any consumers` both marked `restrict access: TRUE` — appropriate, since a consumer registration is a grant of API access. **The honest positioning is that this is a compatibility module rather than a choice for new work.** OAuth 2.0 with `simple_oauth` is what a new integration should use: it is simpler to implement correctly, has an active specification with modern extensions, and its weakness — bearer tokens being usable by whoever holds them — is answered by TLS everywhere, which is now the assumption rather than the aspiration. Reach for 1.0a when the other side requires it. Three things to check on any OAuth 1.0a implementation, because they are where the signing scheme goes wrong: the **signature comparison must be constant-time**; the **nonce must be tracked** so a signed request cannot be replayed within its timestamp window; and the **timestamp window must be enforced and narrow**, since a wide one turns nonce tracking into an unbounded store.

---

- Authenticate a legacy API consumer.
- Support an integration requiring OAuth 1.0a.
- Provide signed API access.
- Let a partner act on a user's behalf.
- Support an enterprise API contract.
- Authenticate a financial integration.
- Register an API consumer.
- Support a government system's requirement.
- Provide delegated API access.
- Authenticate without bearer tokens.
- Support a long-lived integration.
- Let users authorise a third-party app.
- Provide request-signed authentication.
- Support a legacy mobile client.
- Authenticate a desktop application.
- Maintain an existing OAuth 1 integration.
- Provide consumer key management.
- Support a specified protocol version.
