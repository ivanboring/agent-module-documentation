<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Aadhaar Number Widget validates Aadhaar numbers with the Verhoeff checksum.

---

Aadhaar Number Widget provides a **field widget for entering an Indian Aadhaar number** — validating that
the input is a well-formed 12-digit Aadhaar with a correct **Verhoeff checksum** (the official Aadhaar check
digit), so stored values are structurally valid. It depends on core Text, in the Field Types package.

Use it to collect validated Aadhaar numbers. It is a fields feature and it does the validation correctly
(Verhoeff), but **the critical concern is data handling, not code**: an Aadhaar number is **highly sensitive,
legally-regulated personal data** (UIDAI rules and India's DPDP Act). If you collect it you should: **encrypt it
at rest** (e.g. Field Encrypt/Encrypt module), **restrict field access** (Field Permissions — very few roles),
**mask it in display** (show only last 4 digits), avoid logging/exporting it, and store it only where you have a
lawful basis (often you should store a reference/token, not the raw number). The bare widget validates format
but does **not** encrypt, mask or access-restrict on its own — you must add those. Configure the field with
appropriate encryption/access.

---

- Validate an Aadhaar number.
- Check the 12-digit format.
- Verify the Verhoeff checksum.
- Depend on core Text.
- Serve field entry.
- Ensure structural validity.
- TREAT Aadhaar as highly regulated PII (UIDAI/DPDP).
- Encrypt it at rest + restrict field access.
- Mask it in display (last 4 digits) + avoid logging/exporting.
- Store a reference/token where possible, not the raw number.
- Know the widget does NOT encrypt/mask/restrict on its own.
- Add encryption + field access yourself.
- Handle Aadhaar entry.
- Validate Aadhaar.
- Configure the field.
- Collect Aadhaar.
- Handle the widget.
- Check the number.
- Protect the PII.
- Provide Aadhaar validation.
