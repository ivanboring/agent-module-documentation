<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# PDFa11y (pdfa11y) — agent index

Accessibility checking for uploaded PDFs. Depends on core `media` and `file`; parses with
`smalot/pdfparser ^2.0`. PHP >= 8.1. Core requirement `^10.2 || ^11`.
Settings at `/admin/config/media/pdf-accessibility`.

Key facts:
- **Parsing is local.** `smalot/pdfparser` runs in-process; no file is sent to an external
  validation service. That is the important difference from `web_accessibility` (wave 58), which
  delegates to third-party services — worth stating when a site has confidential documents.
- Four permissions, cleanly separated:

  | Permission | Grants | Restricted |
  |---|---|:---:|
  | `administer pdf accessibility` | which checks run and their settings | **yes** |
  | `run pdf accessibility checks` | manually trigger a check | no |
  | `view pdf accessibility reports` | see results on media items | no |
  | `view pdf accessibility help` | the guidance page | no |

  So an editor can be given "see and re-check" without the ability to weaken the ruleset.
- Routes: `pdfa11y.settings` and `pdfa11y.help`
  (`/admin/config/media/pdf-accessibility/help`, `_admin_route: TRUE`).
- Ships `config/optional` as well as `config/install` — some configuration applies only when
  companion modules are present.
- Linted upstream: `phpcs.xml.dist`, `phpstan.neon`.
