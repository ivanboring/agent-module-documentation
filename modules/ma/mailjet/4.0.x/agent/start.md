<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Mailjet (mailjet) — agent index

Transactional mail through the **Mailjet API**, plus a marketing suite in submodules. Libraries:
`mailjet/mailjet-apiv3-php ^1.5`, `phpmailer/phpmailer`, Guzzle.
Core requirement `^9 || ^10 || ^11`. Settings at `/admin/config/system/mailjet`.

| Submodule | Scope |
|---|---|
| `mailjet_list` | contact lists |
| `mailjet_subscription` | sign-up handling |
| `mailjet_campaign` | campaigns |
| `mailjet_event` | Mailjet **event callbacks** (webhooks) |
| `mailjet_stats` | delivery statistics |
| `mailjet_commerce` | Drupal Commerce integration |
| `mailjet_trigger_examples` | examples |

Key facts:
- **Enabling the project wholesale brings a marketing platform, not just a mail transport.** Enable
  only the submodules needed.
- **API key and secret are live credentials** — environment variable, surfaced through a Key
  entity, never exported config.
- **Contact lists are personal data.** Synchronising subscribers to Mailjet is a processing
  arrangement needing a lawful basis and a processor agreement.
- **`mailjet_event` receives POSTs from Mailjet.** As with any webhook, it must be authenticated by
  **signature** rather than trusted because it arrived — verify that before relying on event data
  to change site state.
- The main settings route uses a custom `_mailjet_access_check`; the API form uses
  `access administration pages`, which is looser — worth checking in an access review.
