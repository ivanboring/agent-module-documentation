<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
X AI Provider enables the use of X AI for the AI module.

---

X AI Provider adds an AI provider plugin for **X AI (Grok)** to the Drupal AI module — so AI operations
(chat/completions) can be routed to X's AI service. It depends on the AI module and the Key module, in the AI
Providers package.

Use it to back Drupal AI with X (Grok). It is an AI/integration feature. Security handling: it calls X's API
with an **API key** and integrates with the **Key module** — store the credential as a Key (env/secret), use
HTTPS, and note that prompts/content are **sent to X** (external data egress — confirm acceptable for your
data). It has no access-control role. Configure the X API key.

---

- Route Drupal AI to X (Grok).
- Use X AI for chat/completions.
- Depend on the AI and Key modules.
- Authenticate with an API key via Key.
- Store the credential as a Key/secret.
- Send prompts to X (data egress).
- Confirm the egress is acceptable.
- Use HTTPS.
- Have no access-control role.
- Configure the X API key.
- Handle the AI provider.
- Use X AI.
- Route AI operations.
- Handle the integration.
- Back AI with Grok.
- Configure credentials.
- Handle prompts.
- Provide an AI backend.
- Secure the API key.
- Provide X AI.
