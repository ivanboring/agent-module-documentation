<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Webform Auto Exports — agent index

Automatically **exports Webform submission results** (to files, on a schedule). Depends on `webform`,
`webform_ui`. Version **3.0.0-alpha1**. Core `^9||^10||^11`.

**Privacy:** submissions contain **PII** (names/emails/messages/uploads) — exported files are sensitive:
ensure the destination is access-controlled (not web-accessible), stored securely, handled per data-
protection/retention. No access role but produces sensitive output.
