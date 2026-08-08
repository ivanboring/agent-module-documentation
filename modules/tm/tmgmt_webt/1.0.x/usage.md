<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
WEB-T Translator provides a TMGMT implementation of WEB-T website translation (European Commission eTranslation), reusing the webt module's translation engine.

---

WEB-T Translator (tmgmt_webt) is a TMGMT (Translation Management Tool) translator plugin for WEB-T — the
European Commission's website translation, including its eTranslation engine — so translation jobs managed
through TMGMT can be sent to WEB-T/eTranslation. It depends on the TMGMT module and the WEB-T (webt) module,
reusing webt's translation engine.

**Security caveat — it inherits webt's disabled TLS verification (see the module's local security notes).**
`WebtTranslator` injects and calls webt's `EtranslationService` (`webt.translation_service.etranslation`),
which builds its HTTP client with `verify => FALSE`. So translating through TMGMT with the WEB-T/eTranslation
translator sends the eTranslation credentials (`Authorization: Basic …`) and the content to be translated to
`language-tools.ec.europa.eu` with **TLS certificate verification disabled** — a man-in-the-middle exposure
(credential capture, and tampering of the returned translations, which are stored as content). This is the
same root cause as the `webt` finding; the fix is in `webt` (remove `verify => FALSE`). Do not use the
eTranslation translator in production until `webt` is fixed, and store the eTranslation credentials as
secrets.

---

- Translate TMGMT jobs via WEB-T/eTranslation.
- Provide a TMGMT translator for WEB-T.
- Reuse webt's translation engine.
- Depend on TMGMT and webt.
- Inherit webt's disabled TLS verification.
- Send credentials + content over unverified TLS.
- Understand the MITM exposure.
- Know the fix is in webt (remove verify=>FALSE).
- Avoid the eTranslation translator in production until fixed.
- Store eTranslation credentials as secrets.
- See the module's security notes.
- Route translation through TMGMT.
- Use the EU eTranslation engine.
- Reference the webt finding.
- Handle credential exposure.
- Mind translation tampering.
- Not use disabled-TLS translation.
- Verify webt is fixed first.
- Manage translation via TMGMT.
- Translate with WEB-T.
