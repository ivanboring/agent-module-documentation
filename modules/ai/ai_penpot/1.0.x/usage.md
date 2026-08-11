<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
AI Penpot gives AI agents live Penpot design context via the Penpot API.

---

AI Penpot reads live Penpot (open-source design tool) design context via the Penpot API and exposes it to AI agents — so a Drupal AI agent can reference the actual design (components, layout) when building/verifying UI, bridging design and AI-assisted implementation.

Penpot API credentials are stored encrypted (via easy_encryption) / securely; usage is gated by `use ai penpot design context` and admin by `administer ai penpot`. Depends on `ai`, `ai_agents`, `key`, and `easy_encryption`; requires Drupal 11.2+.

---

- Read Penpot design context.
- Use the Penpot API.
- Expose design to AI agents.
- Reference components/layout.
- Bridge design and AI implementation.
- Store credentials encrypted/securely.
- Gate usage with `use ai penpot design context`.
- Gate admin with `administer ai penpot`.
- Depend on `ai` and `ai_agents`.
- Depend on `key` and `easy_encryption`.
- Require Drupal 11.2+.
- Support AI agents.
- Fetch live design
- Configure the API
- Verify UI against design.
- Integrate Penpot.
- Support design-aware AI.
- Keep credentials secure
