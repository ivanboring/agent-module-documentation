<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Mistral AI Provider (ai_provider_mistral) — agent index

**Mistral** provider plugin for Drupal's **`ai`** module. Requires `ai` and **`key`**.
`administer ai providers` is `restrict access: true`. Version **1.1.0-rc1** — release candidate.
Core requirement `^10.3 || ^11`.

**Why this provider rather than another — it is a procurement decision, not a technical one.**
Mistral is **French, running models in the EU**. For European public bodies, healthcare
organisations and anyone whose data-protection assessment has stalled on **US transfers**, that is
the deciding factor: prompts — which routinely carry content and sometimes personal data — stay in
the EU under the same regulator as the sender. Mistral also publishes **open-weight** models, so a
site can start on the hosted API and move to **self-hosting** without changing anything above the
provider layer.

**The `key` dependency is the right arrangement** — the API key comes from a **Key entity** backed
by an environment variable, never exported configuration.

**Three things for any provider's deployment:**
1. **The key is a spending credential** — set a limit at the provider, and have someone watch it.
2. **A prompt is a disclosure.** Unpublished content, personal data and internal notes in a prompt
   need the same consideration as any other transfer.
3. **Model availability changes.** Pin a model, and know what the site does when it is withdrawn or
   its behaviour shifts under the same name.

Peers documented here: `ai_provider_openrouter` (wave 78), `ai_provider_deepl` (same wave).
