<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# CSV Import Users — agent index

Bulk-**imports users from a CSV** (creates accounts, assigns roles). Depends on core `user`, `file`.
Config at `csv_import_user.import_form`; route gated by **`administer users`**. Version **1.0.1**. Core
`^10.3||^11`.

Correctly admin-gated (same privilege as manual user/role management). Validate the CSV (untrusted
input → accounts); be deliberate about roles granted; mind account status/password handling.
