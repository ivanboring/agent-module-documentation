<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# WEB-T Translator (tmgmt_webt) — agent index

**TMGMT translator plugin for WEB-T** / EU **eTranslation**. Depends on `tmgmt`, `webt` (reuses webt's
`EtranslationService`). Version **1.0.0**. Core (per project).

**SECURITY (see `security.md`, finding):** inherits webt's **disabled TLS** — `WebtTranslator` calls
`webt.translation_service.etranslation` (`EtranslationService`, `verify => FALSE`), so eTranslation
credentials + content go to `language-tools.ec.europa.eu` with **no cert validation** → MITM credential
capture + translation tampering. Same root cause as the `webt` finding; fix is in `webt`. Don't use the
eTranslation translator in production until fixed; store credentials as secrets.
