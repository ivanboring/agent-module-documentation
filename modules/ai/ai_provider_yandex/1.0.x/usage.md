<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
AI Provider Yandex enables the use of YandexGPT.

---

AI Provider Yandex provides a **YandexGPT AI provider** for the AI module — enabling YandexGPT models
(text generation/chat) through Drupal's AI abstraction. It depends on the AI and Key modules, in the AI Providers
package.

Use it to add YandexGPT to AI-powered features. It is an AI/integration feature and it handles secrets
**correctly**: it depends on the **Key** module, so the Yandex **API key/IAM credential** is stored as a Key
(env/secret), not plain config, and (checked) it does **not** disable TLS verification on its calls to Yandex.
Data-handling: prompts/content are **sent to Yandex** (external egress — confirm acceptable for the content),
over HTTPS. It has no access-control role. Configure the Yandex Key and provider.

---

- Provide a YandexGPT AI provider.
- Enable YandexGPT models.
- Use Drupal's AI abstraction.
- Depend on the AI and Key modules.
- Store the API key via the Key module (correct).
- Not disable TLS verification.
- Send prompts/content to Yandex (egress).
- Confirm the egress is acceptable.
- Use HTTPS.
- Have no access-control role.
- Configure the Yandex Key.
- Handle YandexGPT.
- Generate text.
- Configure the provider.
- Call Yandex.
- Handle the integration.
- Chat via Yandex.
- Run YandexGPT.
- Secure the key (Key module).
- Provide YandexGPT.
