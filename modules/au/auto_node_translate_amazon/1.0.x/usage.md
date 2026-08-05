<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Auto Node Translate Amazon provider plugs Amazon Translate into the Auto Node Translate module, so machine translations of node content can be produced by AWS rather than another provider.

---

Auto Node Translate handles the Drupal side of automatic node translation — which fields to translate, when to trigger it, how to save the result — and delegates the actual translating to a provider plugin. This module supplies the AWS one: `AmazonTranslator`, an `AutoNodeTranslateProvider` plugin, plus a settings form at `auto_node_translate_amazon.settings` for the AWS credentials and region the plugin needs. Once configured, Amazon Translate appears as a choice wherever Auto Node Translate asks which provider to use, and translation requests go to the AWS API with the source and target language codes derived from Drupal's language configuration. The module is deliberately small — a plugin and a settings form with a config schema — because everything else belongs to the parent module. Store the AWS keys in environment variables (via a Key entity where supported) rather than in exported configuration.

---

- Machine-translate node content with Amazon Translate.
- Use an existing AWS account for Drupal translations.
- Offer Amazon as an alternative to other translation providers.
- Translate content into several languages automatically.
- Keep translation costs on an existing AWS bill.
- Meet data-residency requirements by choosing an AWS region.
- Bulk translate a content backlog.
- Provide a first-pass translation for editors to review.
- Translate on node save via Auto Node Translate's triggers.
- Choose Amazon per site while other sites use another provider.
- Keep AWS credentials in configuration managed by the settings form.
- Translate only selected fields as configured in the parent module.
- Support languages Amazon Translate covers.
- Reduce manual translation effort for high-volume content.
- Provide translations for a multilingual intranet.
- Switch providers without changing content workflows.
- Test translation quality across providers.
- Automate translation as part of an editorial workflow.
- Translate imported content automatically.
- Keep the provider implementation isolated in one plugin.
