<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Webform RRN/NRN (webform_rrn_nrn) — agent index

Validated Webform element for the **Belgian national insurance number** (rijksregisternummer /
numéro de registre national). Version **8.x-2.4**. Core `^8 || ^9 || ^10 || ^11`.
Depends on `webform`.

Validates real structure — embedded birth date, sequence number, checksum — so transcription errors
are caught at entry rather than three systems downstream.

**Document it as special-category personal data.** A national identifier permits linkage across
every system using it, and in Belgium its processing requires an **authorisation**, not merely a
lawful basis — a compliance question the module cannot answer.

**Operational advice, concretely:** do not store it if you do not need it (a submissions table of
RRNs carries retention, access and breach obligations); if it must be stored, encrypt at rest,
restrict submission viewing, set retention; and test with **generated** numbers, not real ones.