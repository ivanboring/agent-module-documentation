<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Auto Node Translate Amazon provider (auto_node_translate_amazon) — agent index

An **Amazon Translate** provider plugin for `auto_node_translate`. Requires that module. Config at
`auto_node_translate_amazon.settings` (`configure` in info.yml). No permissions, no Drush; config
schema shipped.

Key facts:
- Plugin `Plugin\AutoNodeTranslateProvider\AmazonTranslator` — the plugin type belongs to
  `auto_node_translate`; this module only implements it.
- `Form\SettingsForm` holds the AWS settings (credentials/region) the plugin needs.
- Everything else — which fields translate, when translation runs, how results are saved — is the
  parent module's behaviour.

Credentials handling (per this repo's conventions): put the AWS keys in environment variables and
reference them rather than committing them:

```bash
ddev dotenv set .ddev/.env --aws-access-key=... --aws-secret-key=...
ddev restart
drush cget auto_node_translate_amazon.settings
```

If the settings form stores keys directly in config, treat
`auto_node_translate_amazon.settings` as **secret** — exclude it from config exports or override
it from `settings.php` per environment.
