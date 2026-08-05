<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# VAT Number (vat_number) — agent index

Field type for **European VAT registration numbers**, with validation. Submodule
`webform_vat_number`. Version **2.1.1**. Core requirement `^10 || ^11`.

**The validation is the feature, not the field.** A valid number from another member state means the
**reverse-charge mechanism** applies and VAT is not charged; an invalid one means the **seller owes
the tax** and finds out at audit.

**Two levels of validation — establish which any such module does:**
- **Format validation** — country prefix, structure, per-country **checksum**. Offline, instant,
  free. Catches **typos and nothing else**.
- **VIES validation** — queries the European Commission's service to confirm the number is
  **registered and active**. This is the check that matters for reverse charge, and it is a network
  call to a service well known for being **slow and intermittently unavailable** — a form that
  blocks on it will sometimes block on nothing.

**Two operational points:**
1. **Record VIES responses.** A seller relying on the reverse charge needs **evidence the number was
   valid at the time of sale**; a lookup nobody stored is not evidence.
2. **The UK left the EU VAT system.** GB numbers are **not in VIES** and need HMRC's separate
   service — a distinction that catches sites built before 2021 and copied since.
