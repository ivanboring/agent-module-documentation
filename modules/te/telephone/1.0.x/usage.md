<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Telephone provides the `telephone` field type — a validated phone-number field with a widget and a `tel:` link formatter. It is core's Telephone module continued as a contrib project for Drupal versions after 11.3, where core no longer ships it.

---

The module defines the `telephone` field type (`TelephoneItem`), a `telephone_default` widget for entry, and a `telephone_link` formatter that renders the stored number as a clickable `tel:` link — the behaviour that makes a phone number usable on a mobile device. Three OO hook implementations round it out: `hook_help()` for the module help page, `hook_field_formatter_info_alter()` and `hook_field_type_category_info_alter()`, the last two integrating the field type into Drupal's field-type category UI so it appears in the right group when adding a field. A small CSS library (`telephone.icon.theme.css`, with its PostCSS source) supplies the field-type icon shown in that UI, and a config schema covers the field settings. Because the machine name, field type id, widget and formatter ids are all unchanged from core, a site upgrading past Drupal 11.3 simply requires this project and everything — existing fields, displays, exported config — keeps working.

---

- Store a phone number on a content type with proper field semantics.
- Render numbers as tappable `tel:` links on mobile.
- Keep telephone fields working after upgrading past Drupal 11.3.
- Add a contact number to a staff profile.
- Collect a phone number on a user account.
- Include a phone number in a directory entry.
- Show a formatted phone link in a teaser.
- Provide a phone field for a webform-backed entity.
- Keep field configuration unchanged when core drops the module.
- Add a mobile and landline field to an organisation record.
- Use the field's title attribute for a formatted display.
- Migrate telephone data from Drupal 7 field types.
- Include phone numbers in exported entity data.
- Expose telephone fields through JSON:API.
- Display a click-to-call button on a service page.
- Keep the field type visible in the correct field-type category.
- Validate that a stored number is well-formed.
- Reference the number in tokens and templates.
- Provide a consistent phone field across content types.
- Retire custom text fields used for phone numbers.
