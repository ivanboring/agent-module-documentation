<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Audit Trail — agent index

A **tamper-evident (HMAC-chained) audit trail** — `event()` write API, audit-shaped indexed storage, admin
viewer with side-by-side diff, **chain verifier** (modules route via `chain: TRUE`). Submodules: entity/
entity_paragraphs/file/tsa/user_auth. Drush + permissions. Config at `audit_trail.settings_form`. Version
**1.0.0-alpha6**. Core `^11.3||^12`.

**Security-positive** (tamper-evident log resists undetected tampering — compliance/forensics). Keep the
**HMAC key secret** (its secrecy makes tampering detectable); gate the viewer to trusted admins (logs reveal
who/what, may hold sensitive detail); `tsa` adds trusted timestamping.
