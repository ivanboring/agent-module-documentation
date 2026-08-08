<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Auto Node Translate Libre adds LibreTranslate as a translation provider for Auto Node Translate, enabling machine translation of node content via a LibreTranslate server.

---

Auto Node Translate Libre is a provider plugin for the Auto Node Translate module that uses
LibreTranslate — a free/open-source, self-hostable machine-translation engine — to translate node
content between languages. Where Auto Node Translate handles the workflow of creating and populating
translations, this module supplies the LibreTranslate backend, configured at
`auto_node_translate_libre.settings` (LibreTranslate endpoint and any API key).

Use it to machine-translate nodes with LibreTranslate instead of a commercial API — attractive for
cost and for keeping content on a self-hosted translation server. If pointing at a hosted
LibreTranslate, store any API key as a secret and be aware node content is sent to that endpoint for
translation. It depends on `auto_node_translate` and is a multilingual/machine-translation
integration, not access control.

---

- Machine-translate nodes with LibreTranslate.
- Add LibreTranslate as a translation provider.
- Use a self-hosted translation engine.
- Configure the LibreTranslate endpoint.
- Avoid a commercial translation API.
- Depend on auto_node_translate.
- Translate node content between languages.
- Store any LibreTranslate API key as a secret.
- Keep translation on a self-hosted server.
- Populate translations automatically.
- Send node content to LibreTranslate.
- Configure at the module settings.
- Integrate open-source translation.
- Provide the LibreTranslate backend.
- Reduce translation costs.
- Support multilingual workflows.
- Route Auto Node Translate through LibreTranslate.
- Handle the translation endpoint securely.
- Translate on demand.
- Serve multilingual content.
