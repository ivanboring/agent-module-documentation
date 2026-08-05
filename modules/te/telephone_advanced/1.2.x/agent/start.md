<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Telephone Advanced (telephone_advanced) — agent index

Validation and formatting for **core's** telephone field, backed by
`giggsey/libphonenumber-for-php ^8.12 || ^9.0`. Depends on core `telephone`.
Core requirement `^10 || ^11`.

Key facts:
- **Extends the core field; does not define a new field type.** An existing site adopts it by
  changing widget/formatter settings — no data migration, no field conversion. Existing stored
  values start being validated on next save, which is worth flagging: previously accepted
  rubbish will begin failing validation on edit.
- Surface: `TelephoneValidator(Interface)`, `TelephoneFormatter(Interface)`,
  `TelephoneParserInterface`, `TelephoneTypes` (mobile / fixed line / toll-free / …),
  `TelephoneFormats` (E.164, international, national, RFC3966), `FieldSettings`, and
  `src/Plugin/` for the widget, formatter and validation constraint.
- Line-type restriction (e.g. "mobile only") comes from libphonenumber's classification, which is
  best-effort per country — do not treat it as a guarantee for billing or SMS routing.
- No routes, no permissions, no admin page — everything is per-field configuration.
