<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
AI Anthropic Provider (OAuth) authenticates the Anthropic provider with OAuth setup tokens rather than an API key.

---

AI Anthropic Provider (OAuth) registers an Anthropic provider for the AI module that authenticates using OAuth setup tokens produced by `claude setup-token`, instead of a standard API key. It is explicitly documented for development/personal use — the module's own description warns that third-party use of setup tokens may violate Anthropic's Terms of Service and that production sites should install `ai_provider_anthropic` instead.

The setup token is a credential and must be stored via the Key module (a hard dependency) backed by an environment variable — never hard-coded or committed. Treat this as a dev-only convenience provider.

---

- Register an Anthropic provider for the AI module.
- Authenticate with OAuth setup tokens.
- Use tokens from `claude setup-token`.
- Target development/personal use only.
- Warn that third-party token use may violate ToS.
- Recommend `ai_provider_anthropic` for production.
- Store the token via the Key module.
- Back the Key with an environment variable.
- Never hard-code or commit the token.
- Depend on `ai` and `key`.
- Support Drupal 10.3+ and 11.
- Provide chat via Anthropic models.
- Avoid API-key setup for local dev.
- Treat as a convenience provider.
- Keep credentials out of config export.
- Integrate with the AI provider abstraction.
- Select Anthropic models in AI settings.
- Respect Anthropic Terms of Service.
- Use env/Key for all secrets.
- Prefer the official provider in production.
