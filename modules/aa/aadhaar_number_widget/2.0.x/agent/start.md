<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Aadhaar Number Widget — agent index

A field widget that **validates an Indian Aadhaar number (format + Verhoeff checksum)**. Depends on core `text`.
Version **2.0.0**. Core `^8.8||^9||^10||^11`.

Fields — validates correctly (Verhoeff), but **Aadhaar is highly regulated PII** (UIDAI/DPDP): the widget does
**not** encrypt/mask/restrict on its own — you must **encrypt at rest, restrict field access, mask in display,
avoid logging/exporting**, and prefer storing a reference/token over the raw number.
