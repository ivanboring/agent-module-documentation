<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# User Export CSV & VCF (user_export_csv_vcf) — agent index
**Exports selected users as CSV or VCF (vCard) via bulk actions on the People page.**

- **Version:** 1.0.x (1.0.0-beta1)
- **Core:** ^10 || ^11
- **Depends on:** phone_number, action, address
- **Install:** adds `field_full_name` and `field_phone_number` to users.
- **Actions:** DownloadUserCsvAction, DownloadUserVcfAction (run from `/admin/people`).
- **Routes:** `user_export_csv_vcf.download_user_export_csv_vcf` `/user/{uid}/download-user_export_csv_vcf` (`_access: 'TRUE'`); `user_export_csv_vcf.download_csv` `/user_export_csv_vcf/download/csv/{uid}` (`access content`).

**Security:** a finding is recorded in this module's local `security.md` (do not modify). The VCF download route is `_access: 'TRUE'` (no access check) and the CSV route only requires `access content`, while the response includes user PII (email/phone/address) by `{uid}` — enumerable. Review the recorded finding before enabling where anonymous access matters.
