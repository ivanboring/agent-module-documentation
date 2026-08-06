<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Mistral AI Provider adds Mistral as a provider for Drupal's AI module.

---

The `ai` module abstracts providers so a site's AI features are written once and pointed at whichever service it uses, and which service that is has become a procurement question rather than a technical one. Mistral is a **French** company running models in the European Union, and for European public bodies, healthcare organisations and anyone whose data-protection assessment has stalled on transfers to the United States, that is the deciding factor rather than a detail — the prompts, which routinely contain content and sometimes personal data, stay within the EU and under the same regulator as the organisation sending them. Mistral also publishes open-weight models, so a site can start with the hosted API and move to self-hosting without rewriting anything above the provider layer, which is a meaningful exit route. Version **1.1.0-rc1** — a release candidate — requiring `ai` and **`key`**, with `administer ai providers` marked `restrict access: true`; core requirement `^10.3 || ^11`. The `key` dependency is the right arrangement, keeping the API key in a Key entity from an environment variable rather than in exported configuration. Three things belong in the deployment regardless of provider. **The key is a spending credential** and can incur real cost quickly, so set a limit at the provider and have someone watch it. **A prompt is a disclosure** — whatever is sent has left the site, so unpublished content, personal data and internal notes in a prompt need the same consideration as any other transfer. And **model availability changes**, so pin a model, and know what the site does when it is withdrawn or its behaviour shifts under the same name.

---

- Use an EU-hosted AI provider.
- Meet a data-residency requirement.
- Add AI features with European models.
- Avoid US data transfers for prompts.
- Support a public-sector AI assessment.
- Provide models to the AI module.
- Summarise content with Mistral.
- Add AI translation assistance.
- Support a GDPR-constrained deployment.
- Plan a path to self-hosted models.
- Store an AI key in a Key entity.
- Add AI search to a European site.
- Generate alt text with an EU provider.
- Support a healthcare organisation's constraints.
- Use open-weight models later.
- Add content assistance for editors.
- Meet a procurement requirement.
- Power an AI feature with EU hosting.
