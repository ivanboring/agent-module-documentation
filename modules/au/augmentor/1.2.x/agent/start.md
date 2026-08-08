<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Augmentor (augmentor) — agent index

AI-integration framework — pluggable **augmentors** (summarise/translate/classify/generate) invoked
by other features. Version **1.2.3**. Submodules: `augmentor_ckeditor4`, `augmentor_ckeditor5`,
`augmentor_eca`, `augmentor_search_api_processors`, `augmentor_demo`.

**Security:** provider **API keys are credentials** — Key entity / env, not plain config. Content
sent to an AI provider **leaves your infrastructure** (governance decision for sensitive data).
Treat AI output as untrusted input through normal sanitisation.