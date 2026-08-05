<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Orejime Register records every cookie consent acceptance and decline made through the Orejime consent manager into a database table, so a site can show what visitors chose.

---

Orejime handles the consent dialog itself; this module adds the record-keeping half. Each Orejime service becomes a column in a table created and extended programmatically — `createColumn()` adds one per service — and a row is written when a visitor makes a choice. An admin listing at `/admin/reports/orejime-register/list` and a purge route sit behind `administer orejime entities`, with `src/Services` holding the storage layer and `src/Hook` the integration. Composer requires Orejime `^3`, and `core_version_requirement` is `^10.1 || ^11 || ^12`, already covering Drupal 12. The design decision to understand before deploying it is that the write endpoint at `/orejime_register` is deliberately open — its routing comment says "Anyone can add an entry to the registry" — with no CSRF token, no rate limiting and nothing binding an entry to the visitor who made it. This campaign confirmed by experiment that ten anonymous requests produce ten rows. That matters more here than it would elsewhere, because the table's purpose is evidentiary: the local security notes set out why a forgeable record does not evidence consent, and what a maintainer would need to change.

---

- Record which cookie categories visitors accept.
- Keep a log of consent decisions.
- Show an auditor what choices were offered.
- Track decline rates for a tracking category.
- Purge old consent records.
- List consent entries in the admin UI.
- Add a column per consent service automatically.
- Support a GDPR accountability requirement.
- Report on consent rates over time.
- Retain consent decisions for a defined period.
- Complement the Orejime banner with storage.
- Review consent data before a privacy audit.
- Measure the effect of banner wording.
- Keep consent records inside Drupal.
- Provide evidence for a data-protection review.
- Track consent across a multilingual site.
- Prepare consent reporting for Drupal 12.
- Clear the register after a retention period.
