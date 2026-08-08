<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Perplexity AI Provider enables the use of Perplexity AI for the Drupal AI module.

---

Perplexity AI Provider adds a provider plugin for Perplexity AI to the Drupal AI module — so AI
operations (including Perplexity's answer/search-augmented models) can be routed to Perplexity. It depends on
the AI module, in the AI Providers package.

Use it to use Perplexity as an AI backend. Security note: it authenticates to the Perplexity API with an API
key — **store that key as a secret** (Key entity / environment variable), and be aware prompts sent to the
provider leave the site (data-handling for sensitive content). It has no access-control role. Configure the
Perplexity connection and API key.

---

- Provide a Perplexity AI provider.
- Route AI operations to Perplexity.
- Depend on the AI module.
- Store the Perplexity API key as a secret.
- Mind prompts sent to the provider.
- Handle sensitive content carefully.
- Have no access-control role.
- Use Perplexity as a backend.
- Configure the connection.
- Authenticate to Perplexity.
- Handle the API key securely.
- Use Perplexity models.
- Configure AI provider.
- Connect to Perplexity.
- Provide AI models.
- Integrate Perplexity AI.
- Use an LLM provider.
- Configure the provider.
- Add Perplexity AI.
- Route to Perplexity.
