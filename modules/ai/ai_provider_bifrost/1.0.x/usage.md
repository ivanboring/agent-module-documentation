<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Bifrost AI Provider lets the AI module route requests through the Bifrost LLM gateway.

---

Bifrost AI Provider registers the Bifrost LLM gateway as a provider for the Drupal AI module, so requests can be routed through Bifrost (a gateway that fronts multiple upstream models) rather than talking to a single vendor directly. This centralises model access, routing, and policy at the gateway.

The gateway credential is stored via the Key module (>=1.18) and should be env-backed. Prompt content is sent to the Bifrost endpoint. Depends on `ai` (>=1.4) and `key`; supports Drupal 11 and 12.

---

- Add Bifrost as an AI provider.
- Route requests through the Bifrost gateway.
- Front multiple upstream models.
- Centralise model access and routing.
- Register a provider plugin.
- Send prompts to the Bifrost endpoint.
- Store the credential via Key (>=1.18).
- Back the key with an environment variable.
- Depend on `ai` (>=1.4).
- Support Drupal 11 and 12.
- Integrate with the AI provider abstraction.
- Apply gateway-level policy.
- Select Bifrost in AI settings.
- Incur gateway/model cost.
- Keep secrets in env/Key.
- Support multi-model routing.
- Complement direct providers.
- Provide chat via the gateway.
- Configure the gateway URL.
- Manage LLM access centrally.
