<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
The llama.cpp provider lets the AI module talk to a local/self-hosted llama.cpp server via its OpenAI-compatible API.

---

The llama.cpp provider registers a self-hosted llama.cpp server as an AI provider, using llama.cpp's OpenAI-compatible `/v1` HTTP API. This lets a site run inference against a locally- or privately-hosted model (no third-party vendor), keeping prompt data on infrastructure the operator controls.

Configure the server's base URL; because it speaks the OpenAI API shape, existing OpenAI-style flows work against the local endpoint. Ensure the llama.cpp endpoint is network-restricted (not publicly exposed). Supports Drupal 10.2+ and 11.

---

- Add llama.cpp as an AI provider.
- Use the OpenAI-compatible /v1 API.
- Run inference on a self-hosted model.
- Keep prompt data on controlled infrastructure.
- Avoid third-party LLM vendors.
- Configure the server base URL.
- Reuse OpenAI-style flows locally.
- Register a provider plugin.
- Network-restrict the llama.cpp endpoint.
- Support private/on-prem models.
- Support Drupal 10.2+ and 11.
- Integrate with the AI provider abstraction.
- Select llama.cpp in AI settings.
- Provide chat/completions.
- Avoid per-token vendor cost.
- Keep data on-premises.
- Complement cloud providers.
- Point at any OpenAI-compatible server.
- Support local development models.
- Route AI calls to llama.cpp.
