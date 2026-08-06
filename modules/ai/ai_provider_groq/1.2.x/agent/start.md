<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Groq Provider (ai_provider_groq) — agent index

**Groq** provider plugin for Drupal's **`ai`** module. Requires `ai` and **`key`**. Settings at
`/admin/config/…/ai_provider_groq`. Version **1.2.0-rc1** — release candidate.
Core requirement `^10.2 || ^11`.

**Providers differ mainly on models, price and latency — Groq's proposition is latency.** It runs
inference on purpose-built hardware and returns tokens substantially faster than general-purpose GPU
inference, which **changes what an AI feature can be** rather than just making it nicer:
- an eight-second summarisation is a background job with a spinner;
- a sub-second one **runs while an editor watches** — the difference between a feature people use
  and one they wait for.

That matters for anything interactive: inline suggestions, autocomplete, an editorial assistant, a
search that reformulates a query before running it.

**The `key` dependency is the right arrangement** — Key entity from an environment variable, never
exported configuration.

**Three things for any AI provider deployment, easy to skip when the appeal is speed:**
1. **The key is a spending credential** — set a limit at the provider, and watch it.
2. **A prompt is a disclosure.** Unpublished content, personal data and internal notes need the same
   consideration as any transfer, **including where the provider processes**.
3. **Model availability changes** — pin a model. Lower risk here than most, since a provider serving
   **open-weight** models means the same weights can usually be run elsewhere.

Peers documented here: `ai_provider_openrouter` (wave 78), `ai_provider_mistral`, `ai_provider_deepl`
(wave 80).
