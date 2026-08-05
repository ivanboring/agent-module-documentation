<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
IBAN Field provides an IBAN widget for text fields — a size- and placeholder-configurable input that validates International Bank Account Numbers — plus a matching Webform element in a submodule.

---

Collecting bank details in Drupal usually means a plain text field and hoping the value is right. This module adds an `iban_field` field **widget** (applied to text fields) that presents the value as an IBAN input with two settings, `size` (the textfield width) and `placeholder`, both declared in `config/schema/iban_field.schema.yml` so they export cleanly. Validation checks the entered value is a structurally valid IBAN — country prefix, length and checksum — so obviously wrong account numbers are rejected at form submission rather than discovered by a failed payment run. The `webform_iban_field` submodule brings the same capability to Webform, providing a `WebformIbanElement` render element and the matching `WebformElement` plugin so site builders can add an IBAN component to any webform. There is no configuration form, no permissions and no Drush; you enable the module and choose the widget on a field's form display, or add the element in the Webform UI.

---

- Collect a supplier's bank account number on a registration form.
- Validate IBAN format before storing payment details.
- Add an IBAN field to a user profile.
- Collect bank details on a webform submission.
- Reject mistyped account numbers at entry time.
- Standardise IBAN entry across several forms.
- Set a country-specific placeholder to guide users.
- Control the input width for long IBANs.
- Capture SEPA payment details for direct debits.
- Add IBAN to a grant application content type.
- Store an IBAN on a commerce customer profile.
- Reduce failed payments caused by typos.
- Provide consistent IBAN presentation in editorial forms.
- Export the widget settings as configuration.
- Collect refund details from a claim form.
- Add IBAN validation without writing a constraint.
- Use the same validation in webforms and entity forms.
- Support international account numbers rather than local formats.
- Improve data quality in finance-related workflows.
- Give editors a clearly labelled bank-details input.
