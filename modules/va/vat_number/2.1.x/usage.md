<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
VAT Number provides a field type for European VAT registration numbers, with format validation and a Webform submodule.

---

Any site selling to businesses in the EU needs the customer's VAT number, and it needs it to be correct rather than merely present, because the number determines the tax treatment: a valid number from another member state means the reverse-charge mechanism applies and VAT is not charged, while an invalid one means the seller owes the tax and finds out at audit. So the field is not a text box with a label — the validation is the feature. There are two levels of it and the distinction is the thing to establish about any such module. **Format validation** checks the country prefix and the structure, including each country's checksum rules, and is offline, instant and free — it catches typos and nothing else. **VIES validation** queries the European Commission's service to confirm the number is actually registered and active, which is the check that matters for reverse charge, and it is a network call to a service that is well known for being slow and intermittently unavailable, so a form that blocks on it will sometimes block on nothing. Version **2.1.1** on core `^10 || ^11`, with a `webform_vat_number` submodule. Two operational points: **VIES responses should be recorded**, since a seller relying on the reverse charge needs evidence the number was valid at the time of sale, and a lookup nobody stored is not evidence; and **the UK left the EU VAT system**, so GB numbers are not in VIES and need HMRC's separate service — a distinction that catches sites built before 2021 and copied since.

---

- Collect a customer's VAT number.
- Validate a VAT number's format.
- Support EU reverse-charge invoicing.
- Check a number against VIES.
- Add VAT collection to a webform.
- Validate a business registration.
- Prevent VAT number typos.
- Support B2B checkout.
- Record VAT validation evidence.
- Collect a supplier's tax number.
- Support cross-border invoicing.
- Validate a country prefix.
- Add a VAT field to a profile.
- Support an EU marketplace.
- Collect tax details at registration.
- Validate before applying zero rate.
- Support an accounting integration.
- Add VAT numbers to orders.
