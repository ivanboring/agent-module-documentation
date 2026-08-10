<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
AltTexting adds AI generated text to media images.

---

AltTexting **adds AI-generated alt text to media images** — using an AI vision model to suggest alternative
text for images, to speed up accessibility remediation. It depends on core Media, provides its own permissions.

Use it to auto-suggest image alt text. It is an AI/accessibility feature. Security/data handling: it **sends
images to the configured AI/vision provider** (external egress — confirm acceptable, especially for private/
sensitive images; API key via the provider's Key config, secret), and generated alt text should be **reviewed**
by a human (AI descriptions can be wrong/inappropriate). It has no access-control role beyond its permission.
Configure the AI provider and enable alt-text generation.

---

- Generate AI alt text for media images.
- Suggest alternative text.
- Speed up accessibility remediation.
- Depend on core Media.
- Provide its own permissions.
- Use an AI vision model.
- Send images to the AI provider (egress).
- Confirm acceptable (private/sensitive images).
- Store the API key as a secret.
- REVIEW generated alt text (can be wrong).
- Have no access-control role beyond permission.
- Configure the AI provider.
- Handle alt-text generation.
- Generate alt text.
- Configure the generation.
- Describe images.
- Handle the integration.
- Suggest alt text.
- Review the output.
- Provide AI alt text.
