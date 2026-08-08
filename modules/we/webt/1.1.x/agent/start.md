<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# WEB-T (webt) — agent index

Automated **content translation** via pluggable engines — a generic engine and an EU **eTranslation**
engine. Integrates `content_translation`, `locale`, `language`, `config_translation`. Config at
`webt.settings`. Version **1.1.1**. Core (per project).

**SECURITY (see `security.md`):** the **eTranslation engine disables TLS verification** —
`EtranslationService` uses `verify => FALSE` (hardcoded), so credentials (`Basic` auth) and
translated content go to `language-tools.ec.europa.eu` with **no cert validation** → MITM credential
capture + translation tampering (content injection written back to the site). Don't use the
eTranslation engine in production until fixed; the generic engine is unaffected. Store credentials as
secrets.
