<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Augmentor is an AI-integration framework that lets content be augmented (summarised, translated, classified, generated) via pluggable AI providers, with CKEditor, ECA and Search API integrations.

---

Augmentor connects Drupal content to AI services through a plugin system of 'augmentors' — operations like summarise, translate, classify, extract or generate — that other features invoke. Submodules wire it into CKEditor 4/5 (in-editor augmentation), ECA (event-driven augmentation), Search API processors, and a demo. Because it calls external AI providers, the provider **API keys are credentials** that must be kept out of plain config (a Key entity / environment), and content sent to an AI provider leaves your infrastructure — a data-governance decision for anything sensitive. The augmentation runs with whatever access the invoking context has; treat AI output as untrusted input that still passes through Drupal's normal sanitisation.

---

- Summarise content with AI.
- Translate content via a provider.
- Classify or tag content.
- Generate text from a prompt.
- Augment in CKEditor.
- Drive augmentation from ECA.
- Process search index items with AI.
- Keep AI provider keys out of git.
- Send only non-sensitive content to AI.
- Use a Key entity for the API key.
- Treat AI output as untrusted.
- Enable when the feature is needed.
- Keep it disabled otherwise.
- Restrict administration to trusted roles.
- Confirm behaviour on your site.
- Test before production.
- Review configuration.
- Pair with related modules.
- Keep the setup minimal.
- Document why it was added.
- Verify it fits your theme.
- Audit access to it.