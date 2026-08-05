<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
IntlDate formats dates with PHP's **intl** extension instead of `strftime`-style patterns, so a date renders correctly per locale — including calendars, month names and ordering that a fixed pattern cannot express.

---

Drupal's core date formats are `date()` patterns: fixed strings like `d/m/Y` that produce the same shape regardless of language. That is fine for one locale and wrong for a multilingual site, where "March 5, 2026", "5 mars 2026", "2026年3月5日" and non-Gregorian calendars are all the correct rendering of the same instant, and no single pattern yields them. ICU — the standard behind PHP's intl extension — encodes those rules per locale, and this module exposes them: an `intl_date_format` **configuration entity** with a full admin UI at `/admin/config/regional/intl-date-time`, formatters for date fields, and a `TwigExtension` so templates can format dates directly. Because formats are config entities they export and deploy like core's date formats. It requires **`ext-intl`**, which is not enabled on every PHP install — worth checking before proposing it — plus PHP 8.0+ and core `^10.1 || ^11`. The gain over core is precisely the multilingual case; on a single-language site core's date formats are usually sufficient and simpler.

---

- Render dates correctly in every site language.
- Show month names in the visitor's language.
- Use a locale's own date ordering.
- Format dates in a non-Gregorian calendar.
- Add ICU-based date formats to a site.
- Format a date from a Twig template.
- Export date formats with configuration.
- Show relative or skeleton date formats.
- Improve a multilingual site's date rendering.
- Avoid hard-coded date patterns per language.
- Match dates to a locale's conventions.
- Render a date field with an ICU format.
- Provide localized dates in a newsletter template.
- Support Japanese or Arabic date conventions.
- Give editors named, reusable formats.
- Reduce bespoke date formatting code.
- Format times consistently across languages.
- Meet a localisation requirement.
