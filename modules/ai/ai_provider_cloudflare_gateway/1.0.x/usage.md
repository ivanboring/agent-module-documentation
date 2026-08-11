<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Registers the Cloudflare AI Gateway as a provider for the Drupal AI module.

---

Cloudflare AI Gateway Provider registers the Cloudflare AI Gateway as a provider for the Drupal AI module — so its models become available for chat and related AI operations wherever the AI module offers a provider choice. It routes AI calls through a Cloudflare AI Gateway, adding caching, rate limiting and analytics at the gateway.

The API credential is stored via the Key module (env-backed) where applicable, and requests send prompt content to the provider (cost + data egress). Depends on `ai`, `cloudflare_ai`, `cloudflare_sdk`; supports Drupal per ^10.5 || ^11 || ^12.

---

- Add the Cloudflare AI Gateway as an AI provider.
- Provide chat operations.
- Register a provider plugin.
- Make its models selectable.
- Send prompts to the provider (cost/egress).
- Store the credential via Key (env-backed).
- Integrate with the AI provider abstraction.
- Keep the key secure.
- Configure models per site.
- Support the AI module.
- Route AI calls to the provider.
- Complement other providers.
- Select the provider
- Incur provider cost
- Keep secrets in env/Key.
- Provide LLM access.
- Handle provider config.
- Support multi-provider setups
