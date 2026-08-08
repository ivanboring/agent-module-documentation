<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
ChatGPT Augmentor provides an Augmentor plugin that connects to the ChatGPT (OpenAI) API for AI-augmented content operations.

---

ChatGPT Augmentor is a plugin for the Augmentor framework that connects to the ChatGPT (OpenAI) API,
letting Augmentor-powered operations (summarize, rewrite, generate, classify, etc.) use ChatGPT as the
model backend. Augmentor provides the abstraction and UI for applying AI transformations to content/
fields; this module supplies the ChatGPT provider. It depends on the `augmentor` module.

Use it to add ChatGPT-backed AI actions within Augmentor workflows. The security-relevant point is the
OpenAI API key — store it as a secret (Augmentor typically integrates the Key module for provider
credentials), never in plaintext config — and be aware that content sent for augmentation is
transmitted to OpenAI (a data-handling consideration for sensitive content). Configure the ChatGPT
provider (key, model) within Augmentor.

---

- Use ChatGPT with the Augmentor framework.
- Connect Augmentor to the OpenAI API.
- Summarize/rewrite content via ChatGPT.
- Provide a ChatGPT Augmentor plugin.
- Depend on the augmentor module.
- Store the OpenAI API key as a secret.
- Avoid plaintext credential config.
- Send content to OpenAI for augmentation.
- Mind data handling for sensitive content.
- Configure the ChatGPT model.
- Add AI actions to workflows.
- Back Augmentor with ChatGPT.
- Classify content with ChatGPT.
- Generate text via the API.
- Use Key for the API credential.
- Apply AI transformations.
- Choose the ChatGPT provider.
- Integrate OpenAI into Augmentor.
- Augment fields with AI.
- Handle credentials securely.
