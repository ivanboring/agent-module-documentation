<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Delete Users CSV — agent index

**Bulk-deletes users listed (by email) in a CSV** (batch). Gated by `administer users`. Version **8.x-1.0**.
Core `^10.3||^11.0`.

Admin tool — **destructive/irreversible** (cascades per account-cancellation settings): verify the CSV, back up,
keep `administer users` to trusted admins. No unauthenticated surface.
