<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
CSV Import Users imports users from a CSV file, creating accounts (with roles) in bulk from spreadsheet data.

---

CSV Import Users provides an administrative form to import Drupal user accounts in bulk from a CSV
file — mapping columns to user properties and assigning roles from the file. It saves manually creating
many accounts (onboarding, migrations). It depends on core User and File and is configured at
`csv_import_user.import_form`; the import route is gated by the `administer users` permission.

Use it for bulk user onboarding from a spreadsheet. Because it creates accounts and can assign roles,
it is correctly restricted to user administrators (`administer users`) — the same privilege needed to
create users and grant roles manually. Still, treat imports carefully: validate the CSV (it is
untrusted input becoming accounts), be deliberate about which roles the file grants (don't grant
privileged roles unintentionally), and consider account status/password handling for imported users. It
is an admin/import tool acting with the importer's privileges.

---

- Import users from a CSV file.
- Create accounts in bulk.
- Assign roles from the CSV.
- Map columns to user properties.
- Onboard many users at once.
- Depend on core User and File.
- Restrict import to administer users.
- Configure at csv_import_user.import_form.
- Validate the CSV data.
- Treat CSV as untrusted input.
- Avoid granting privileged roles unintentionally.
- Handle imported account status.
- Consider password handling.
- Act with the importer's privileges.
- Migrate users from a spreadsheet.
- Bulk-create accounts.
- Assign roles during import.
- Gate the import route by permission.
- Import user data.
- Onboard from CSV.
