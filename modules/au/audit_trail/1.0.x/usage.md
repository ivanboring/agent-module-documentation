<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Audit Trail provides an audit trail with HMAC tamper-evidence, a canonical event() write API, audit-shaped storage, an admin viewer with diff, and a chain verifier.

---

Audit Trail provides a **tamper-evident audit trail** — a canonical `event()` write API for recording
audit events, audit-shaped indexed storage, an admin viewer with side-by-side diff, and a **chain verifier**;
its chained PSR-3 logger uses **HMAC** to make the log tamper-evident (each entry is chained/signed so
undetected modification/deletion is detectable). Any module can route to the chained logger via `chain: TRUE`
in the log context. It ships submodules (entity, entity_paragraphs, file, tsa, user_auth), is configured at
`audit_trail.settings_form`, provides Drush commands and its own permissions, in the Logging package.

Use it for a trustworthy audit log (compliance, forensics). This is a **security-positive** feature: an
HMAC-chained, tamper-evident audit trail resists undetected log tampering, which is valuable for accountability
and incident investigation. When adopting: keep the **HMAC key secret** (its secrecy is what makes tampering
detectable — store it as a secret, not in committed config), gate the audit viewer to trusted admins (audit
logs reveal who did what, and may contain sensitive detail), and note the `tsa` submodule adds trusted
timestamping. It has no access-control role beyond its permission. Configure what is audited.

---

- Record audit events via event().
- Provide HMAC tamper-evidence.
- Chain entries so tampering is detectable.
- Offer an admin viewer with diff.
- Provide a chain verifier.
- Let modules route via chain: TRUE.
- Keep the HMAC key secret.
- Gate the audit viewer to trusted admins.
- Note audit logs may contain sensitive detail.
- Add trusted timestamping (tsa submodule).
- Provide Drush commands and permissions.
- Have no access-control role beyond permission.
- Support compliance/forensics.
- Configure what is audited.
- Handle the audit trail.
- Verify the chain.
- Store audit events.
- Resist log tampering.
- Configure the audit.
- Provide accountability.
