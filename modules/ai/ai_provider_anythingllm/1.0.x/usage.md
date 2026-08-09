<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
AnythingLLM Provider lets the Drupal AI module use the AnythingLLM API.

---

AnythingLLM Provider adds an AI provider plugin for **AnythingLLM** to the Drupal AI module — AnythingLLM
is a self-hostable LLM/RAG application, so AI operations can be routed to your AnythingLLM instance instead of
a cloud vendor. It depends on the AI module and the Key module.

Use it to back Drupal AI with AnythingLLM. It is an AI/integration feature. Security handling: it talks to
AnythingLLM's API with an **API key**, and it integrates with the **Key module** — store the credential as a
Key (env/secret), not plain config, and point it at your **trusted** AnythingLLM endpoint over HTTPS; because
AnythingLLM can be self-hosted, prompts can stay on your infrastructure (a data advantage). It has no
access-control role. Configure the endpoint and key.

---

- Route Drupal AI to AnythingLLM.
- Use a self-hostable LLM/RAG backend.
- Depend on the AI and Key modules.
- Authenticate with an API key via the Key module.
- Store the credential as a Key/secret.
- Point at a trusted HTTPS endpoint.
- Keep prompts on your infrastructure (self-host).
- Have no access-control role.
- Configure the endpoint and key.
- Handle the AI provider.
- Use AnythingLLM.
- Configure credentials.
- Route AI operations.
- Handle the integration.
- Back AI with AnythingLLM.
- Configure the provider.
- Handle local AI.
- Use a self-hosted LLM.
- Configure AnythingLLM.
- Provide an AI backend.
