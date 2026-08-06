<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Webform RRN/NRN adds a validated element for the Belgian national insurance number (rijksregisternummer / numéro de registre national).

---

National identifier formats encode structure — the Belgian number carries a birth date, a sequence number distinguishing people born the same day, and a checksum — and validating that structure catches transcription errors at the point of entry rather than three systems downstream. A form that accepts any eleven digits is a form that will collect wrong ones.

The element does that validation, in a Webform, which is where Belgian public-sector and healthcare forms are usually built.

**This field is special-category personal data and should be documented as such.** A national identifier is a direct identifier that permits linkage across every system that uses it, and in Belgium its use is legally restricted — an organisation needs an authorisation to process the RRN, not merely a lawful basis. That is a compliance question the module cannot answer and should not be assumed answered.

Which makes the operational advice concrete. **Do not store it if you do not need it**: a webform submission holding RRNs is a database of national identifiers with the retention, access and breach obligations that implies. If the number is only needed to pass to another system, pass it and do not persist it; if it must be stored, encrypt at rest, restrict who can view submissions, and set a retention period. And the checksum makes valid-looking test data easy to generate, so test with generated numbers rather than real ones.

---

- Collect a Belgian national number on a form.
- Validate the RRN checksum.
- Catch transcription errors at entry.
- Reject an invalid identifier format.
- Build a Belgian public-sector form.
- Confirm authorisation to process the RRN.
- Avoid storing the number if not needed.
- Pass the number on without persisting it.
- Encrypt stored identifiers at rest.
- Restrict who can view submissions.
- Set a retention period for submissions.
- Test with generated rather than real numbers.
- Document the lawful basis for processing.
- Plan a breach response for identifier data.
- Audit which forms collect national numbers.
