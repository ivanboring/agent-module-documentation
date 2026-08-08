<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
WEB-T provides automated content translation for Drupal, with pluggable engines including a generic engine and the EU eTranslation service.

---

WEB-T (webt) provides automated content translation for Drupal — translating content via pluggable
machine-translation engines. It integrates with Drupal's content translation, locale, language and
config translation, and offers engines including a generic engine and an "eTranslation" engine that
uses the European Commission's eTranslation machine-translation API. It is configured at
`webt.settings`.

**Security caveat — the eTranslation engine disables TLS certificate verification.**
`EtranslationService` builds its HTTP client with `verify => FALSE` (hardcoded), so all its requests to
`https://language-tools.ec.europa.eu/etranslation/api` run without certificate validation. Those
requests carry the eTranslation credentials (`Authorization: Basic base64(applicationName:password)`)
and the content being translated, and the returned translations are written back into site content —
so a man-in-the-middle on that path could capture the credentials and tamper with translations
(content injection). See the module's local security notes. Do not use the eTranslation engine in
production until `verify => FALSE` is removed; the generic engine does not have this flag. When
adopting, store the eTranslation application credentials as secrets.

---

- Automate website content translation.
- Translate content via WEB-T engines.
- Use the EU eTranslation service engine.
- Use the generic translation engine.
- Integrate with content_translation and locale.
- Configure at webt.settings.
- Note the eTranslation engine disables TLS verification.
- Avoid the eTranslation engine in production until fixed.
- Know credentials/content are MITM-exposed there.
- Store eTranslation credentials as secrets.
- Prefer the generic engine (no verify=>false).
- Translate content into multiple languages.
- Send content to the translation engine.
- Write translations back into content.
- Support multilingual sites.
- Depend on language and config_translation.
- Understand the content-injection risk on MITM.
- Rotate eTranslation credentials if exposed.
- Configure translation engines.
- Review the local security notes for webt.
