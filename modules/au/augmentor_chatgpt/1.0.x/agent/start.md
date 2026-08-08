<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# ChatGPT Augmentor — agent index

**Augmentor** plugin connecting to the **ChatGPT (OpenAI) API** — ChatGPT as the model backend for
Augmentor operations (summarize/rewrite/generate/classify). Depends on `augmentor`. Version **1.0.0**.
Core `^10.2||^11||^12`.

**Store the OpenAI API key as a secret** (Augmentor/Key), never plaintext. Content sent for
augmentation goes to OpenAI (data-handling consideration).
